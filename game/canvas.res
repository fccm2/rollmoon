type document  // abstract type for a document object
type context

@val external document: document = "document"
@val external window: Dom.element = "window"

@send external getElementById: (document, string) => Dom.element = "getElementById"
@send external getContext: (Dom.element, string) => context = "getContext"

@set external fillStyle: (context, string) => unit = "fillStyle"
@set external strokeStyle: (context, string) => unit = "strokeStyle"
@set external lineWidth: (context, float) => unit = "lineWidth"

@send external fillRect: (context, int, int, int, int) => unit = "fillRect"
@send external rect: (context, int, int, int, int) => unit = "rect"
@send external arc: (context, float, float, float, float, float, bool) => unit = "arc"

@send external beginPath: context => unit = "beginPath"
@send external closePath: context => unit = "closePath"

@send external fill: context => unit = "fill"
@send external stroke: context => unit = "stroke"

@send external moveTo: (context, float, float) => unit = "moveTo"
@send external lineTo: (context, float, float) => unit = "lineTo"

@send external fillText: (context, string, int, int) => unit = "fillText"
@set external font: (context, string) => unit = "font"
@set external textBaseline: (context, string) => unit = "textBaseline"
@set external textAlign: (context, string) => unit = "textAlign"

@send external setTransform: (context, float, float, float, float, float, float) => unit = "setTransform"

@send external translate: (context, int, int) => unit = "translate"
@send external rotate: (context, float) => unit = "rotate"
@send external scale: (context, float, float) => unit = "scale"

@send external save: context => unit = "save"
@send external restore: context => unit = "restore"

type intervalID

@val external setInterval: (unit => unit, int) => intervalID = "setInterval"

@val external console_log: string => unit = "console.log"

type key_event = {
    keyCode: int,
    key: string,
}

type mouse_event = {
    clientX: int,
    clientY: int,

    offsetX: int,
    offsetY: int,
}

@send external addKeyEventListener: (Dom.element, string, key_event => unit, bool) => unit = "addEventListener"
@send external addMouseEventListener: (Dom.element, string, mouse_event => unit, bool) => unit = "addEventListener"

