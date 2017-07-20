(* -*- mode: coq; mode: visual-line -*- *)
Require Import HoTT.Basics HoTT.Types.
Require Import HoTT.Spaces.No.Core.

Local Open Scope path_scope.
Local Open Scope surreal_scope.

(** * Addition of surreal numbers *)

Section Addition.
  Context `{Univalence}.

  Section Inner.

    Context {L R : Type@{i} } (xL : L -> No@{i}) (xR : R -> No@{i})
            (xcut : forall (l : L) (r : R), xL l < xR r).

    Let A := {g : No@{i} -> No@{i} &
              (forall x y : No@{i}, x <= y -> g x <= g y) *
              (forall x y : No@{i}, x < y -> g x < g y)}.

    Context (xL_plus : L -> A) (xR_plus : R -> A)
            (xL_lt_xR_plus : forall (l : L) (r : R) (x : No),
                               (xL_plus l).1 x < (xR_plus r).1 x).

    Definition plus_inner
    : { g : forall (y : No@{i}),
              { x_plus_y : No@{i} &
                (forall l, (xL_plus l).1 y < x_plus_y) *
                (forall r, x_plus_y < (xR_plus r).1 y) } &
        (forall y z : No, y <= z -> (g y).1 <= (g z).1) *
        (forall y z : No, y <  z -> (g y).1 <  (g z).1) }.
    Proof.
      simple refine (No_ind_package
                (fun y => { x_plus_y : No &
                            (forall l, (xL_plus l).1 y < x_plus_y) *
                            (forall r, x_plus_y < (xR_plus r).1 y) })
                (fun _ _ _ z w => z.1 <= w.1)
                (fun _ _ _ z w => z.1 < w.1)
                _ _ _ _ _).
      - intros L' R' yL yR ycut x_plus_yL x_plus_yR x_plus_yL_lt_yR.
        pose (L'' := L + L').  pose (R'' := R + R').
        pose (zL := sum_ind (fun _ => No)
                            (fun l => (xL_plus l).1 {{ yL | yR // ycut }})
                            (fun l => (x_plus_yL l).1)
                    : L'' -> No).
        pose (zR := sum_ind (fun _ => No)
                            (fun r => (xR_plus r).1 {{ yL | yR // ycut }})
                            (fun r => (x_plus_yR r).1)
                    : R'' -> No).
        assert (zcut : forall (l:L'') (r:R''), zL l < zR r).
        { abstract (
          intros [l|l] [r|r]; cbn;
          [ apply xL_lt_xR_plus
          | transitivity ((xL_plus l).1 (yR r));
            [ apply (snd (xL_plus l).2), Conway_theorem0_ii_r
            | exact (fst (x_plus_yR r).2 l) ]
          | transitivity ((xR_plus r).1 (yL l));
            [ exact (snd (x_plus_yL l).2 r)
            | apply (snd (xR_plus r).2), Conway_theorem0_ii_l ]
          | apply x_plus_yL_lt_yR ]). }
        exists ({{ zL | zR // zcut }}); split.
        + intros l.
          refine (Conway_theorem0_ii_l _ _ zL zR zcut (inl l)).
        + intros r.
          refine (Conway_theorem0_ii_r _ _ zL zR zcut (inl r)).
      - abstract (
        intros x y [a ?] [b ?] p q r s;
        rewrite transport_sigma; cbn in *;
        apply path_sigma_hprop, path_No; cbn;
        rewrite transport_const; assumption).
      - abstract (
        intros L' R' yL yR ycut x_plus_yL x_plus_yR x_plus_yL_lt_yR
               L'' R'' zL zR zcut x_plus_zL x_plus_zR x_plus_zL_lt_zR
               yL_lt_z x_plus_yL_lt_z y_lt_zR x_plus_y_lt_zR;
        cbn in *;
        apply le_lr; [ intros [l|l] | intros [r|r] ]; cbn;
        [ refine (le_lt_trans
                    (fst (xL_plus l).2 _ {{ zL | zR // zcut}} _) _);
          [ by (apply le_lr; assumption)
          | refine (Conway_theorem0_ii_l _ _ _ _ _ (inl l)) ]
        | exact (x_plus_yL_lt_z l)
        | refine (lt_le_trans _
                    (fst (xR_plus r).2 {{ yL | yR // ycut}} _ _));
          [ refine (Conway_theorem0_ii_r _ _ _ _ _ (inl r))
          | by (apply le_lr; assumption) ]
        | exact (x_plus_y_lt_zR r) ] ).
      - abstract (
        intros L' R' yL yR ycut x_plus_yL x_plus_yR x_plus_yL_lt_yR
               L'' R'' zL zR zcut x_plus_zL x_plus_zR x_plus_zL_lt_zR
               l y_le_zL x_plus_y_le_zL; cbn;
        apply lt_l with (inr l);
        apply x_plus_y_le_zL ).
      - abstract (
        intros L' R' yL yR ycut x_plus_yL x_plus_yR x_plus_yL_lt_yR
               L'' R'' zL zR zcut x_plus_zL x_plus_zR x_plus_zL_lt_zR
               r yR_le_z x_plus_yR_le_z; cbn;
        apply lt_r with (inr r);
        apply x_plus_yR_le_z).
    Defined.

    (** We now prove a computation law for [inner_cut].  It holds definitionally, so we would like to prove it with just [:= 1] and then rewrite along it later, as we did above.  However, there is a subtlety in that the output should be a surreal defined by a cut, which in particular includes a proof of cut-ness, and that proof is rather long, so we would not like to see it in the type of this lemma.  Thus, instead we assert only that there *exists* some proof of cut-ness and an equality. *)
    Definition plus_inner_cut
               {L' R' : Type@{i} } (yL : L' -> No@{i}) (yR : R' -> No@{i})
               (ycut : forall (l : L') (r : R'), yL l < yR r)
    : let L'' := L + L' in
      let R'' := R + R' in
      let zL := sum_ind (fun _ => No)
                        (fun l => (xL_plus l).1 {{ yL | yR // ycut }})
                        (fun l => (plus_inner.1 (yL l)).1)
                : L'' -> No in
      let zR := sum_ind (fun _ => No)
                        (fun r => (xR_plus r).1 {{ yL | yR // ycut }})
                        (fun r => (plus_inner.1 (yR r)).1)
                : R'' -> No in
      { zcut : forall (l:L'') (r:R''), zL l < zR r &
        (plus_inner.1 {{ yL | yR // ycut }}).1 = {{ zL | zR // zcut }} }.
    Proof.
      (** Now we tell Coq that we want the equality to be definitional, and let it figure out what the proof of cut-ness has to be. *)
      eexists.
      (** Adding [rel_hnf] here speeds things up considerably, possibly because it puts the terms in a form where the evar can be instantiated without unfolding or reduction, preventing backtracking across the evar instantiation. *)
      rel_hnf. reflexivity.
    Qed.

  End Inner.

  Definition plus_outer
  : { f : No@{i} -> { g : No@{i} -> No@{i} &
                  (forall x y, x <= y -> g x <= g y) *
                  (forall x y, x <  y -> g x <  g y) } &
      (forall x y, x <= y -> forall z, (f x).1 z <= (f y).1 z) *
      (forall x y, x <  y -> forall z, (f x).1 z <  (f y).1 z) }.
  Proof.
    refine (No_rec_package
              {g : No -> No &
                (forall x y, x <= y -> g x <= g y) *
                (forall x y, x <  y -> g x <  g y) }
              (fun g h => forall x, g.1 x <= h.1 x)
              (fun g h => forall x, g.1 x <  h.1 x)
              (fun L R xL xR xcut xL_plus xR_plus xL_lt_xR_plus =>
                 let g := plus_inner xL_plus xR_plus xL_lt_xR_plus in
                 ((fun y => (g.1 y).1) ; (g.2)))
               _ _ _ _).
    - abstract (
      intros [g ?] [h ?] p q;
      apply path_sigma_hprop; cbn in *;
      apply path_arrow; intros x;
      apply path_No; [ apply p | apply q ] ).
    - abstract (
      intros L R xL xR xcut xL_plus xR_plus xL_lt_xR_plus
           L' R' yL yR ycut yL_plus yR_plus yL_lt_yR_plus;
      intros xL_lt_y xL_lt_y_plus x_lt_yR x_lt_yR_plus z;
      lazy beta zeta in *; cbn [pr1] in *;
      pattern z; refine (No_ind_hprop _ _ z);
      intros L'' R'' zL zR zcut x_le_y_plus_zL x_le_y_plus_zR;
      destruct (plus_inner_cut xL_plus xR_plus xL_lt_xR_plus
                               zL zR zcut) as [xzcut p]; rewrite p;
      destruct (plus_inner_cut yL_plus yR_plus yL_lt_yR_plus
                               zL zR zcut) as [yzcut q];rewrite q;
      apply le_lr; [ intros [l|l] | intros [r|r] ];
      [ (** x^L + z < y + z *)
        specialize (xL_lt_y_plus l {{ zL | zR // zcut }});
        rewrite q in xL_lt_y_plus;
        exact xL_lt_y_plus
      | (** x + z^L < y + z *)
        refine (le_lt_trans (x_le_y_plus_zL l) _);
        refine (Conway_theorem0_ii_l _ _ _ _ _ (inr l))
      | (** x + z < y^R + z *)
        specialize (x_lt_yR_plus r {{ zL | zR // zcut }});
        rewrite p in x_lt_yR_plus;
        exact x_lt_yR_plus
      | (** x + z < y + z^R *)
        refine (lt_le_trans _ (x_le_y_plus_zR r));
        refine (Conway_theorem0_ii_r _ _ _ _ _ (inr r)) ]).
    - abstract (
      intros L R xL xR xcut xL_plus xR_plus xL_lt_xR_plus
             L' R' yL yR ycut yL_plus yR_plus yL_lt_yR_plus;
      intros l x_le_yL x_le_yL_plus z;
      lazy beta zeta in *; cbn [pr1] in *;
      pattern z; refine (No_ind_hprop _ _ z);
      intros L'' R'' zL zR zcut x_le_y_plus_zL x_le_y_plus_zR;
      destruct (plus_inner_cut xL_plus xR_plus xL_lt_xR_plus
                               zL zR zcut) as [xzcut p]; rewrite p;
      destruct (plus_inner_cut yL_plus yR_plus yL_lt_yR_plus
                               zL zR zcut) as [yzcut q];rewrite q;
      refine (le_lt_trans (x_le_yL_plus {{ zL | zR // zcut }}) _);
      refine (Conway_theorem0_ii_l _ _ _ _ _ (inl l)) ).
    - abstract (
      intros L R xL xR xcut xL_plus xR_plus xL_lt_xR_plus
             L' R' yL yR ycut yL_plus yR_plus yL_lt_yR_plus;
      intros r xR_le_y xR_le_y_plus z;
      lazy beta zeta in *; cbn [pr1] in *;
      pattern z; refine (No_ind_hprop _ _ z);
      intros L'' R'' zL zR zcut x_le_y_plus_zL x_le_y_plus_zR;
      destruct (plus_inner_cut xL_plus xR_plus xL_lt_xR_plus
                               zL zR zcut) as [xzcut p]; rewrite p;
      destruct (plus_inner_cut yL_plus yR_plus yL_lt_yR_plus
                               zL zR zcut) as [yzcut q];rewrite q;
      refine (lt_le_trans _ (xR_le_y_plus {{ zL | zR // zcut }}));
      refine (Conway_theorem0_ii_r _ _ _ _ _ (inl r)) ).
  Defined.

  Definition plus (x y : No) : No
    := (plus_outer.1 x).1 y.

  Infix "+" := plus : surreal_scope.

  Definition plus_le_l (x x' y : No@{i}) (p : x <= x')
  : (x + y) <= (x' + y)
    := fst (plus_outer.2) x x' p y.

  Definition plus_lt_l (x x' y : No@{i}) (p : x < x')
  : (x + y) < (x' + y)
    := snd (plus_outer.2) x x' p y.

  Definition plus_le_r (x y y' : No@{i}) (p : y <= y')
  : (x + y) <= (x + y')
    := fst (plus_outer.1 x).2 y y' p.

  Definition plus_lt_r (x y y' : No@{i}) (p : y < y')
  : (x + y) < (x + y')
    := snd (plus_outer.1 x).2 y y' p.

  (** See the remarks above [plus_inner_cut] to explain the type of this lemma. *)
  Definition plus_cut
             {L R : Type@{i} } (xL : L -> No@{i}) (xR : R -> No@{i})
             (xcut : forall (l : L) (r : R), xL l < xR r)
             {L' R' : Type@{i} } (yL : L' -> No@{i}) (yR : R' -> No@{i})
             (ycut : forall (l : L') (r : R'), yL l < yR r)
  : let L'' := (L + L')%type in
    let R'' := (R + R')%type in
    let x := {{ xL | xR // xcut }} in
    let y := {{ yL | yR // ycut }} in
    let zL := sum_ind (fun _ => No)
                      (fun l => (xL l) + y) (fun l => x + (yL l))
              : L'' -> No in
    let zR := sum_ind (fun _ => No)
                      (fun r => (xR r) + y) (fun r => x + (yR r))
              : R'' -> No in
    { zcut : forall (l:L'') (r:R''), zL l < zR r &
      x + y = {{ zL | zR // zcut }} }
    := plus_inner_cut
         (fun l => plus_outer.1 (xL l))
         (fun r => plus_outer.1 (xR r))
         (fun l r => snd plus_outer.2 (xL l) (xR r) (xcut l r))
         yL yR ycut.

End Addition.