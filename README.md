# styled_divider

Divider widget with different line styles.

## Getting Started

Use `StyledDivider` and `StyledVerticalDivider` widget.

```dart
final divider = StyledDivider(
                  color: Colors.green,
                  height: 50,
                  thickness: 2,
                  lineStyle: DividerLineStyle.dotted,
                  indent: 20,
                  endIndent: 20,
                  );

final verticalDivider = StyledVerticalDivider(
                          color: Colors.green,
                          height: 50,
                          thickness: 2,
                          lineStyle: DividerLineStyle.dotted,
                          indent: 20,
                          endIndent: 20,
                          );
```

The interface is exactly like the built-in `Divider` (and `VerticalDivider`) widget except for the 
`lineStyle` parameter. 

Currently, only four line styles are supported:
- DividerLineStyle.solid
- DividerLineStyle.dotted
- DividerLineStyle.dashed
- DividerLineStyle.dashdotted
