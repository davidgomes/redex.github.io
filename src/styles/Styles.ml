open Glamor

[%%raw "require('./reset.css')"]
[%%raw "require('./global.css')"]


module Layout = struct

  let root = css [
  ]

  let header = css [
  ]

  let widthContainer = css [
    margin "0 auto";
    maxWidth "960px";
    padding "1.0875rem 1.45rem";
  ]

  let title = css [
    margin "0";

    Selector("& > a", [
      color "#DD4C39";
      textDecoration "none";
    ])
  ]

end


module Index = struct

  let links = css [
    textAlign "center";

    Selector("& > a", [
      color "#DD4C39";
      fontSize ".85rem";
      textDecoration "none";
      opacity ".5";
      margin "0 1em";

      Selector("&:hover", [
        opacity "1";
      ])
    ])
  ]

  let lists = css [
    display "flex";

    Selector("& > *", [
      padding "0 1em";
      flex "1";

      Selector("& > h2", [
        textAlign "center";
        fontSize "1.1em";
        fontWeight "600";
        margin "1em 0";
      ]);

      Selector("& > div", [
        background "none";
        border "none";
        padding "0";
      ])
    ])
  ]

end