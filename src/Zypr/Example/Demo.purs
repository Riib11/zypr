module Zypr.Example.Demo where

import Prelude
import Zypr.Syntax

reorder_apps :: Term
reorder_apps = (App { apl: (Var { dat: { id: "f" } }), arg: (App { apl: (Var { dat: { id: "g" } }), arg: (App { apl: (Var { dat: { id: "h" } }), arg: (Var { dat: { id: "x" } }), dat: { indent_arg: false } }), dat: { indent_arg: false } }), dat: { indent_arg: false } })

reorder_lets :: Term
reorder_lets = (Let { bnd: (Bind { id: "a" }), bod: (Let { bnd: (Bind { id: "c" }), bod: (Let { bnd: (Bind { id: "b" }), bod: (Let { bnd: (Bind { id: "d" }), bod: (Let { bnd: (Bind { id: "e" }), bod: (Hole { dat: {} }), dat: { indent_bod: true, indent_imp: false }, imp: (Hole { dat: {} }) }), dat: { indent_bod: true, indent_imp: false }, imp: (Hole { dat: {} }) }), dat: { indent_bod: true, indent_imp: false }, imp: (Hole { dat: {} }) }), dat: { indent_bod: true, indent_imp: false }, imp: (Hole { dat: {} }) }), dat: { indent_bod: true, indent_imp: false }, imp: (Hole { dat: {} }) })

scratch_example :: Term
-- scratch_example = (App { apl: (Var { dat: { id: "whenFlagClicked" } }), arg: (App { apl: (Var { dat: { id: "repeat" } }), arg: (If { cnd: (Infix { dat: { indent: false, infixOp: Eq }, left: (Var { dat: { id: "x" } }), right: (Var { dat: { id: "10" } }) }), dat: { indent_els: true, indent_thn: true }, els: (Var { dat: { id: "pass" } }), thn: (App { apl: (Var { dat: { id: "sayHello" } }), arg: (Var { dat: { id: "unit" } }), dat: { indent_arg: false } }) }), dat: { indent_arg: true } }), dat: { indent_arg: true } })
scratch_example = (App { apl: (Var { dat: { id: "whenFlagClicked" } }), arg: (App { apl: (Var { dat: { id: "repeat" } }), arg: (App { apl: (App { apl: (Var { dat: { id: "when" } }), arg: (Infix { dat: { indent: false, infixOp: Eq }, left: (Var { dat: { id: "x" } }), right: (Var { dat: { id: "10" } }) }), dat: { indent_arg: false } }), arg: (Var { dat: { id: "sayHello" } }), dat: { indent_arg: true } }), dat: { indent_arg: true } }), dat: { indent_arg: true } })

tylr_user_study_example :: Term
tylr_user_study_example = (App { apl: (Var { dat: { id: "f" } }), arg: (App { apl: (Var { dat: { id: "g" } }), arg: (App { apl: (App { apl: (App { apl: (Var { dat: { id: "h" } }), arg: (Infix { dat: { indent: false, infixOp: Times }, left: (Var { dat: { id: "x" } }), right: (Var { dat: { id: "x" } }) }), dat: { indent_arg: false } }), arg: (Infix { dat: { indent: false, infixOp: Minus }, left: (Infix { dat: { indent: false, infixOp: Times }, left: (Var { dat: { id: "y" } }), right: (Var { dat: { id: "z" } }) }), right: (Var { dat: { id: "y" } }) }), dat: { indent_arg: false } }), arg: (Infix { dat: { indent: false, infixOp: Minus }, left: (Infix { dat: { indent: false, infixOp: Times }, left: (Var { dat: { id: "z" } }), right: (Var { dat: { id: "y" } }) }), right: (Var { dat: { id: "z" } }) }), dat: { indent_arg: false } }), dat: { indent_arg: false } }), dat: { indent_arg: false } })

reorder_conslist :: Term
reorder_conslist = (Infix { dat: { indent: false, infixOp: Cons }, left: (Var { dat: { id: "z" } }), right: (Infix { dat: { indent: false, infixOp: Cons }, left: (Var { dat: { id: "i" } }), right: (Infix { dat: { indent: false, infixOp: Cons }, left: (Var { dat: { id: "p" } }), right: (Infix { dat: { indent: false, infixOp: Cons }, left: (Var { dat: { id: "p" } }), right: (Infix { dat: { indent: false, infixOp: Cons }, left: (Var { dat: { id: "e" } }), right: (Infix { dat: { indent: false, infixOp: Cons }, left: (Var { dat: { id: "r" } }), right: (Var { dat: { id: "[]" } }) }) }) }) }) }) })

manipulate_args :: Term
manipulate_args = (App { apl: (App { apl: (App { apl: (Var { dat: { id: "f" } }), arg: (Var { dat: { id: "x" } }), dat: { indent_arg: false } }), arg: (App { apl: (App { apl: (Var { dat: { id: "g" } }), arg: (Var { dat: { id: "y" } }), dat: { indent_arg: false } }), arg: (Var { dat: { id: "z" } }), dat: { indent_arg: false } }), dat: { indent_arg: false } }), arg: (App { apl: (App { apl: (App { apl: (Var { dat: { id: "h" } }), arg: (Var { dat: { id: "u" } }), dat: { indent_arg: false } }), arg: (Var { dat: { id: "v" } }), dat: { indent_arg: false } }), arg: (Var { dat: { id: "w" } }), dat: { indent_arg: false } }), dat: { indent_arg: false } })

add_mul_assoc_infix :: Term
add_mul_assoc_infix = (Infix { dat: { indent: false, infixOp: Plus }, left: (Var { dat: { id: "a" } }), right: (Infix { dat: { indent: false, infixOp: Times }, left: (Var { dat: { id: "b" } }), right: (Var { dat: { id: "c" } }) }) })

add_mul_assoc_prefix :: Term
add_mul_assoc_prefix = (App { apl: (App { apl: (Var { dat: { id: "add" } }), arg: (Var { dat: { id: "a" } }), dat: { indent_arg: false } }), arg: (App { apl: (App { apl: (Var { dat: { id: "mul" } }), arg: (Var { dat: { id: "b" } }), dat: { indent_arg: false } }), arg: (Var { dat: { id: "c" } }), dat: { indent_arg: false } }), dat: { indent_arg: false } })

mergesort :: Term
-- mergesort = (Let { bnd: (Bind { id: "merge" }), bod: (Let { bnd: (Bind { id: "split" }), bod: (Let { bnd: (Bind { id: "sort" }), bod: (Hole { dat: {} }), dat: { indent_bod: true, indent_imp: true }, imp: (Lam { bnd: (Bind { id: "ls" }), bod: (If { cnd: (Infix { dat: { indent: false, infixOp: Le }, left: (App { apl: (Var { dat: { id: "length" } }), arg: (Var { dat: { id: "ls" } }), dat: { indent_arg: false } }), right: (Var { dat: { id: "1" } }) }), dat: { indent_els: true, indent_thn: true }, els: (Let { bnd: (Bind { id: "ls'" }), bod: (App { apl: (App { apl: (Var { dat: { id: "merge" } }), arg: (App { apl: (Var { dat: { id: "fst" } }), arg: (Var { dat: { id: "ls'" } }), dat: { indent_arg: false } }), dat: { indent_arg: false } }), arg: (App { apl: (Var { dat: { id: "snd" } }), arg: (Var { dat: { id: "ls'" } }), dat: { indent_arg: false } }), dat: { indent_arg: false } }), dat: { indent_bod: false, indent_imp: false }, imp: (App { apl: (Var { dat: { id: "split" } }), arg: (Var { dat: { id: "ls" } }), dat: { indent_arg: false } }) }), thn: (Var { dat: { id: "ls" } }) }), dat: { indent_bod: true } }) }), dat: { indent_bod: true, indent_imp: true }, imp: (Lam { bnd: (Bind { id: "ls" }), bod: (Let { bnd: (Bind { id: "halfLength" }), bod: (Let { bnd: (Bind { id: "go" }), bod: (App { apl: (App { apl: (Var { dat: { id: "go" } }), arg: (Var { dat: { id: "nil" } }), dat: { indent_arg: false } }), arg: (Infix { dat: { indent: false, infixOp: Divide }, left: (App { apl: (Var { dat: { id: "length" } }), arg: (Var { dat: { id: "ls" } }), dat: { indent_arg: false } }), right: (Var { dat: { id: "2" } }) }), dat: { indent_arg: false } }), dat: { indent_bod: true, indent_imp: false }, imp: (Lam { bnd: (Bind { id: "xs" }), bod: (Lam { bnd: (Bind { id: "i" }), bod: (Lam { bnd: (Bind { id: "ls" }), bod: (If { cnd: (Infix { dat: { indent: false, infixOp: Eq }, left: (Var { dat: { id: "i" } }), right: (Var { dat: { id: "0" } }) }), dat: { indent_els: true, indent_thn: true }, els: (App { apl: (App { apl: (App { apl: (Var { dat: { id: "go" } }), arg: (Infix { dat: { indent: false, infixOp: Cons }, left: (App { apl: (Var { dat: { id: "head" } }), arg: (Var { dat: { id: "ls" } }), dat: { indent_arg: false } }), right: (Var { dat: { id: "xs" } }) }), dat: { indent_arg: false } }), arg: (Infix { dat: { indent: false, infixOp: Minus }, left: (Var { dat: { id: "i" } }), right: (Var { dat: { id: "1" } }) }), dat: { indent_arg: false } }), arg: (App { apl: (Var { dat: { id: "tail" } }), arg: (Var { dat: { id: "ls" } }), dat: { indent_arg: false } }), dat: { indent_arg: false } }), thn: (Infix { dat: { indent: false, infixOp: Comma }, left: (App { apl: (Var { dat: { id: "reverse" } }), arg: (Var { dat: { id: "xs" } }), dat: { indent_arg: false } }), right: (Var { dat: { id: "ys" } }) }) }), dat: { indent_bod: true } }), dat: { indent_bod: false } }), dat: { indent_bod: false } }) }), dat: { indent_bod: true, indent_imp: false }, imp: (Infix { dat: { indent: false, infixOp: Divide }, left: (App { apl: (Var { dat: { id: "length" } }), arg: (Var { dat: { id: "ls" } }), dat: { indent_arg: false } }), right: (Var { dat: { id: "2" } }) }) }), dat: { indent_bod: true } }) }), dat: { indent_bod: true, indent_imp: true }, imp: (Lam { bnd: (Bind { id: "xs" }), bod: (Lam { bnd: (Bind { id: "ys" }), bod: (If { cnd: (App { apl: (Var { dat: { id: "nil" } }), arg: (Var { dat: { id: "xs" } }), dat: { indent_arg: false } }), dat: { indent_els: true, indent_thn: false }, els: (If { cnd: (App { apl: (Var { dat: { id: "nil" } }), arg: (Var { dat: { id: "ys" } }), dat: { indent_arg: false } }), dat: { indent_els: true, indent_thn: false }, els: (If { cnd: (Infix { dat: { indent: false, infixOp: Lt }, left: (Var { dat: { id: "x" } }), right: (Var { dat: { id: "y" } }) }), dat: { indent_els: true, indent_thn: true }, els: (Infix { dat: { indent: false, infixOp: Cons }, left: (Var { dat: { id: "y" } }), right: (App { apl: (App { apl: (Var { dat: { id: "merge" } }), arg: (Infix { dat: { indent: false, infixOp: Cons }, left: (Var { dat: { id: "x" } }), right: (Var { dat: { id: "xs" } }) }), dat: { indent_arg: false } }), arg: (Var { dat: { id: "ys" } }), dat: { indent_arg: false } }) }), thn: (Infix { dat: { indent: false, infixOp: Cons }, left: (Var { dat: { id: "x" } }), right: (App { apl: (App { apl: (Var { dat: { id: "merge" } }), arg: (Var { dat: { id: "xs" } }), dat: { indent_arg: false } }), arg: (Infix { dat: { indent: false, infixOp: Cons }, left: (Var { dat: { id: "y" } }), right: (Var { dat: { id: "ys" } }) }), dat: { indent_arg: false } }) }) }), thn: (Var { dat: { id: "xs" } }) }), thn: (Var { dat: { id: "ys" } }) }), dat: { indent_bod: true } }), dat: { indent_bod: false } }) })
mergesort = (Let { bnd: (Bind { id: "merge" }), bod: (Let { bnd: (Bind { id: "split" }), bod: (Let { bnd: (Bind { id: "sort" }), bod: (Hole { dat: {} }), dat: { indent_bod: true, indent_imp: false }, imp: (Lam { bnd: (Bind { id: "ls" }), bod: (If { cnd: (Infix { dat: { indent: false, infixOp: Le }, left: (App { apl: (Var { dat: { id: "length" } }), arg: (Var { dat: { id: "ls" } }), dat: { indent_arg: false } }), right: (Var { dat: { id: "1" } }) }), dat: { indent_els: true, indent_thn: true }, els: (Let { bnd: (Bind { id: "ls'" }), bod: (App { apl: (App { apl: (Var { dat: { id: "merge" } }), arg: (App { apl: (Var { dat: { id: "fst" } }), arg: (Var { dat: { id: "ls'" } }), dat: { indent_arg: false } }), dat: { indent_arg: false } }), arg: (App { apl: (Var { dat: { id: "snd" } }), arg: (Var { dat: { id: "ls'" } }), dat: { indent_arg: false } }), dat: { indent_arg: false } }), dat: { indent_bod: false, indent_imp: false }, imp: (App { apl: (Var { dat: { id: "split" } }), arg: (Var { dat: { id: "ls" } }), dat: { indent_arg: false } }) }), thn: (Var { dat: { id: "ls" } }) }), dat: { indent_bod: true } }) }), dat: { indent_bod: true, indent_imp: false }, imp: (Lam { bnd: (Bind { id: "ls" }), bod: (Let { bnd: (Bind { id: "halfLength" }), bod: (Let { bnd: (Bind { id: "go" }), bod: (App { apl: (App { apl: (Var { dat: { id: "go" } }), arg: (Infix { dat: { indent: false, infixOp: Divide }, left: (App { apl: (Var { dat: { id: "length" } }), arg: (Var { dat: { id: "ls" } }), dat: { indent_arg: false } }), right: (Var { dat: { id: "2" } }) }), dat: { indent_arg: false } }), arg: (Var { dat: { id: "nil" } }), dat: { indent_arg: false } }), dat: { indent_bod: true, indent_imp: false }, imp: (Lam { bnd: (Bind { id: "xs" }), bod: (Lam { bnd: (Bind { id: "i" }), bod: (Lam { bnd: (Bind { id: "ys" }), bod: (If { cnd: (Infix { dat: { indent: false, infixOp: Eq }, left: (Var { dat: { id: "i" } }), right: (Var { dat: { id: "0" } }) }), dat: { indent_els: true, indent_thn: true }, els: (App { apl: (App { apl: (App { apl: (Var { dat: { id: "go" } }), arg: (Infix { dat: { indent: false, infixOp: Cons }, left: (App { apl: (Var { dat: { id: "head" } }), arg: (Var { dat: { id: "ys" } }), dat: { indent_arg: false } }), right: (Var { dat: { id: "xs" } }) }), dat: { indent_arg: false } }), arg: (Infix { dat: { indent: false, infixOp: Minus }, left: (Var { dat: { id: "i" } }), right: (Var { dat: { id: "1" } }) }), dat: { indent_arg: false } }), arg: (App { apl: (Var { dat: { id: "tail" } }), arg: (Var { dat: { id: "ys" } }), dat: { indent_arg: false } }), dat: { indent_arg: false } }), thn: (Infix { dat: { indent: false, infixOp: Comma }, left: (App { apl: (Var { dat: { id: "reverse" } }), arg: (Var { dat: { id: "xs" } }), dat: { indent_arg: false } }), right: (Var { dat: { id: "ys" } }) }) }), dat: { indent_bod: true } }), dat: { indent_bod: false } }), dat: { indent_bod: false } }) }), dat: { indent_bod: true, indent_imp: false }, imp: (Infix { dat: { indent: false, infixOp: Divide }, left: (App { apl: (Var { dat: { id: "length" } }), arg: (Var { dat: { id: "ls" } }), dat: { indent_arg: false } }), right: (Var { dat: { id: "2" } }) }) }), dat: { indent_bod: true } }) }), dat: { indent_bod: true, indent_imp: false }, imp: (Lam { bnd: (Bind { id: "xs" }), bod: (Lam { bnd: (Bind { id: "ys" }), bod: (If { cnd: (App { apl: (Var { dat: { id: "nil" } }), arg: (Var { dat: { id: "xs" } }), dat: { indent_arg: false } }), dat: { indent_els: true, indent_thn: false }, els: (If { cnd: (App { apl: (Var { dat: { id: "nil" } }), arg: (Var { dat: { id: "ys" } }), dat: { indent_arg: false } }), dat: { indent_els: true, indent_thn: false }, els: (If { cnd: (Infix { dat: { indent: false, infixOp: Lt }, left: (Var { dat: { id: "x" } }), right: (Var { dat: { id: "y" } }) }), dat: { indent_els: true, indent_thn: true }, els: (Infix { dat: { indent: false, infixOp: Cons }, left: (Var { dat: { id: "y" } }), right: (App { apl: (App { apl: (Var { dat: { id: "merge" } }), arg: (Infix { dat: { indent: false, infixOp: Cons }, left: (Var { dat: { id: "x" } }), right: (Var { dat: { id: "xs" } }) }), dat: { indent_arg: false } }), arg: (Var { dat: { id: "ys" } }), dat: { indent_arg: false } }) }), thn: (Infix { dat: { indent: false, infixOp: Cons }, left: (Var { dat: { id: "x" } }), right: (App { apl: (App { apl: (Var { dat: { id: "merge" } }), arg: (Var { dat: { id: "xs" } }), dat: { indent_arg: false } }), arg: (Infix { dat: { indent: false, infixOp: Cons }, left: (Var { dat: { id: "y" } }), right: (Var { dat: { id: "ys" } }) }), dat: { indent_arg: false } }) }) }), thn: (Var { dat: { id: "xs" } }) }), thn: (Var { dat: { id: "ys" } }) }), dat: { indent_bod: true } }), dat: { indent_bod: false } }) })

reassoc_minus :: Term 
reassoc_minus = (Infix { dat: { indent: false, infixOp: Minus }, left: (Infix { dat: { indent: false, infixOp: Minus }, left: (Var { dat: { id: "a" } }), right: (Var { dat: { id: "b" } }) }), right: (Var { dat: { id: "c" } }) })


