% Imports are carried out by query (headless Horn clause)
:- ['02_isotree'].

test :- test1,
        test2,
        test4,
        test5,
        \+test3,
        !. %negation as failure. succeeds if test3 fails!

test1 :- isotree(tree(a, void, void), tree(a, void, void)).

% These trees are isomorphic
test2 :- isotree(
            tree(a,
                  tree(b,
                    tree(d,
                      void, void),
                    tree(e,
                      void, void)),
                  tree(c,
                    void, void)),
            tree(a,
                  tree(c,
                    void, void),
                  tree(b,
                    tree(d,
                      void, void),
                    tree(e,
                      void, void)))).

% These trees are not isomorphic
test3 :- isotree(
            tree(a,
                  tree(c,
                    tree(d,
                      void, void),
                    tree(e,
                      void, void)),
                  tree(c,
                    void, void)),
            tree(a,
                  tree(b,
                    void, void),
                  tree(b,
                    tree(d,
                      void, void),
                    tree(e,
                      void, void)))).

% These trees are isomorphic
test4 :- isotree(
            tree(a,
                  tree(c,
                    void, void),
                  tree(b,
                    tree(e,
                      void, void),
                    tree(d,
                      void, void)
                    )
                  ),
            tree(a,
                  tree(c,
                    void, void),
                  tree(b,
                    tree(d,
                      void, void),
                    tree(e,
                      void, void)
                    )
                  )
                ).

test5 :- isotree(
  tree(a,
        tree(b,
          tree(d,
            void, void),
          tree(e,
            void, void)),
        tree(c,
          void, void)),
  tree(a,
        tree(c,
          void, void),
        tree(b,
          tree(e,
            void, void),
          tree(d,
            void, void)))).
