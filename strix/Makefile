all:

test:
	./strix -f "G(req0) -> (G (req0 -> F grant0) & G (req1 -> F grant1) & G (!(grant0 & grant1)))" --ins="req0,req1" --outs="grant0,grant1"

a1:
	./strix -f "true -> G( ( a & (!r) & (!i) ) OR ( (!a) & r & (!i) ) OR ( (!a) & (!r) & i ))" \
	--ins="b" \
	--outs="a,r,i"
a2:
	./strix -f "true -> \
	( \
		(G( ( a & (!r) & (!i) ) OR ( (!a) & r & (!i) ) OR ( (!a) & (!r) & i ))) AND \
		(G (a -> a U i) AND G (r -> r U i)) \
	) \
	" \
	--ins="b" \
	--outs="a,r,i"

a2-2: 
	./strix -f "true -> \
	( \
		(G( ( a & (!r) & (!i) ) OR ( (!a) & r & (!i) ) OR ( (!a) & (!r) & i ))) AND \
		(G (a -> a U i) AND G (r -> r U i)) AND \
		(G F (a) AND G F (r)) \
	) \
	" \
	--ins="b" \
	--outs="a,r,i"

b1-1:
	./strix -f "true -> \
	( \
		(G( ( a & (!r) & (!i) ) OR ( (!a) & r & (!i) ) OR ( (!a) & (!r) & i ))) AND \
		(G (a -> a U i) AND G (r -> r U i)) AND \
		(G (b -> F(r)) AND G ((!b) -> F(a))) \
	) \
	" \
	--ins="b" \
	--outs="a,r,i"


b1-2a:
	./strix -f "true -> \
	( \
		(G( ( a & (!r) & (!i) ) OR ( (!a) & r & (!i) ) OR ( (!a) & (!r) & i ))) AND \
		(G (a -> a U i) AND G (r -> r U i)) AND \
		(G (b -> F(r)) AND G ((!b) -> F(a))) AND \
		(G (b -> X a)) \
	) \
	" \
	--ins="b" \
	--outs="a,r,i"

b1-2b:
	./strix -f "true -> \
	( \
		(G( ( a & (!r) & (!i) ) OR ( (!a) & r & (!i) ) OR ( (!a) & (!r) & i ))) AND \
		(G (b -> F(r)) AND G ((!b) -> F(a))) AND \
		(G (b -> X a)) \
	) \
	" \
	--ins="b" \
	--outs="a,r,i"

b2-1:
	./strix -f "true -> \
	( \
		(G( ( a & (!r) & (!i) ) OR ( (!a) & r & (!i) ) OR ( (!a) & (!r) & i ))) AND \
		(G (a -> a U i) AND G (r -> r U i)) AND \
		(G (b -> F(r)) AND G ((!b) -> F(a))) AND \
		(G ( (b & r) -> ( r U (!b) ) )) AND \
		(G ( (!b & a) -> ( a U (b) ) )) \
	) \
	" \
	--ins="b" \
	--outs="a,r,i"

b2-2:
	./strix -f "((G F b) -> (G F NOT b) AND (G F NOT b) -> (G F b)) -> \
	( \
		(G( ( a & (!r) & (!i) ) OR ( (!a) & r & (!i) ) OR ( (!a) & (!r) & i ))) AND \
		(G (a -> a U i) AND G (r -> r U i)) AND \
		(G (b -> F(r)) AND G ((!b) -> F(a))) AND \
		(G ( (b & r) -> ( r U (!b) ) )) AND \
		(G ( (!b & a) -> ( a U (b) ) )) \
	) \
	" \
	--ins="b" \
	--outs="a,r,i"

b3-1:
	./strix -f "() -> \
	( \
		(G( ( a & (!r) & (!i) ) OR ( (!a) & r & (!i) ) OR ( (!a) & (!r) & i ))) AND \
		(G (a -> a U i) AND G (r -> r U i)) AND \
		(G (b -> F(r)) AND G ((!b) -> F(a))) AND \
		(G ( (b & r) -> ( r U (!b) ) )) AND \
		(G ( (!b & a) -> ( a U (b) ) )) \
	) \
	" \
	--ins="b" \
	--outs="a,r,i"