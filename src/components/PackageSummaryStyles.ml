open! Css
open CssEx

let root = fun type_ -> style [
  unsafe "padding" ".75em 1.5em";
  marginBottom (em 0.5);
  boxShadow Theme.Shadow.panel;
  backgroundColor Theme.Panel.Color.background;
  lineHeight (em 1.45);

  unsafe "backgroundImage" (if_ (type_ == "unpublished") Theme.Panel.crosshatchBackground);
]

let header = style [
  display Flex;
  alignItems Baseline;
]

let name = style [
  color Theme.Color.link;
  fontSize (em 1.1);
  textDecoration None;

  hover [
    unsafe "textDecoration" "underline";
  ];
]

let version = style [
  fontSize (em 0.85);
  fontStyle Italic;
  marginLeft (em 0.5);
]

let unpublishedLabel = function
| "unpublished" -> style [
    fontSize (em 0.85);
    fontStyle Italic;
    marginLeft (em 0.5);
    color Theme.Color.bad;
  ]
| _ -> style [
    display None;
  ]

let props = style [
  display Flex;
  justifyContent FlexEnd;
  alignItems Baseline;
  unsafe "marginLeft" "auto";

  selector "& > *" [
    marginLeft (em 1.);
  ];
]

let updated = style [
  fontSize (em 0.85);
  unsafe "whiteSpace" "nowrap";
]

let license = style [
  display InlineBlock;
  fontSize (em 0.85);
  unsafe "whiteSpace" "nowrap";
  border (px 1) Solid Theme.Color.text;
  unsafe "padding" "0 1ex";
]

let nolicense = style [
  color Theme.Color.bad;
  fontSize (em 0.85);
  unsafe "whiteSpace" "nowrap";
  border (px 1) Solid Theme.Color.bad;
  unsafe "padding" "0 1ex";
]

let stars = style [
  fontSize (em 0.85);
  unsafe "whiteSpace" "nowrap";
]

let starIcon = style [
  marginLeft (em 0.25);
  transform (translateY (px (-1)));
]

let description = style [
  (*whiteSpace "nowrap";*)
  unsafe "textOverflow" "ellipsis";
  overflow Hidden;
  unsafe "margin" ".5ex 0 1ex";
]

let tags = style [
  color Theme.Color.link;

  selector "& a" [
    unsafe "backgroundColor" "hsla(6.9, 90%, 90%, .4)";
  ];
]

let tagsIcon = style [
  opacity 0.25;
]