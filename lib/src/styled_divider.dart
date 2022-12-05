import 'dart:math';

import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:styled_divider/src/divider_line_style.dart';

final Map<DividerLineStyle, List<int>> _dividerLineStyleDash = {
  DividerLineStyle.solid: [1],
  DividerLineStyle.dotted: [1, 1],
  DividerLineStyle.dashed: [5, 2],
  DividerLineStyle.dashdotted: [3, 1, 1, 1],
};

class StyledDivider extends StatelessWidget {
  const StyledDivider({
    super.key,
    this.height,
    this.thickness,
    this.indent,
    this.endIndent,
    this.color,
    this.lineStyle = DividerLineStyle.solid,
  })  : assert(height == null || height >= 0.0),
        assert(thickness == null || thickness >= 0.0),
        assert(indent == null || indent >= 0.0),
        assert(endIndent == null || endIndent >= 0.0);

  final double? height;

  final double? thickness;

  final double? indent;

  final double? endIndent;

  final Color? color;

  final DividerLineStyle lineStyle;

  @override
  Widget build(BuildContext context) {
    final DividerThemeData dividerTheme = DividerTheme.of(context);
    final double height = this.height ?? dividerTheme.space ?? 16.0;
    final double thickness = this.thickness ??
        dividerTheme.thickness ??
        DividerTheme.of(context).thickness ??
        0.0;
    final double indent = this.indent ?? dividerTheme.indent ?? 0.0;
    final double endIndent = this.endIndent ?? dividerTheme.endIndent ?? 0.0;

    final Color effectiveColor = color ??
        DividerTheme.of(context).color ??
        Theme.of(context).dividerColor;

    List<int> dash = _dividerLineStyleDash[lineStyle] ?? [1];

    return SizedBox(
      height: height,
      child: Center(
        child: lineStyle == DividerLineStyle.solid
            ? Container(
                height: thickness,
                margin: EdgeInsets.only(left: indent, right: endIndent),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: Divider.createBorderSide(context,
                        color: color, width: thickness),
                  ),
                ),
              )
            : Container(
                height: thickness / 2,
                margin: EdgeInsets.only(
                    left: indent, right: endIndent, bottom: thickness / 2),
                decoration: DottedDecoration(
                  shape: Shape.line,
                  linePosition: LinePosition.bottom,
                  color: effectiveColor,
                  strokeWidth: thickness,
                  dash:
                      dash.map((e) => (e * max(thickness, 1)).round()).toList(),
                ),
              ),
      ),
    );
  }
}

class StyledVerticalDivider extends StatelessWidget {
  const StyledVerticalDivider({
    super.key,
    this.width,
    this.thickness,
    this.indent,
    this.endIndent,
    this.color,
    this.lineStyle = DividerLineStyle.solid,
  })  : assert(width == null || width >= 0.0),
        assert(thickness == null || thickness >= 0.0),
        assert(indent == null || indent >= 0.0),
        assert(endIndent == null || endIndent >= 0.0);

  final double? width;

  final double? thickness;

  final double? indent;

  final double? endIndent;

  final Color? color;

  final DividerLineStyle lineStyle;

  @override
  Widget build(BuildContext context) {
    final DividerThemeData dividerTheme = DividerTheme.of(context);
    final double width = this.width ?? dividerTheme.space ?? 16.0;
    final double thickness = this.thickness ??
        dividerTheme.thickness ??
        DividerTheme.of(context).thickness ??
        0.0;
    final double indent = this.indent ?? dividerTheme.indent ?? 0.0;
    final double endIndent = this.endIndent ?? dividerTheme.endIndent ?? 0.0;

    final Color effectiveColor = color ??
        DividerTheme.of(context).color ??
        Theme.of(context).dividerColor;

    List<int> dash = _dividerLineStyleDash[lineStyle] ?? [1];

    return SizedBox(
      width: width,
      child: Center(
        child: lineStyle == DividerLineStyle.solid
            ? Container(
                width: thickness,
                margin: EdgeInsets.only(top: indent, bottom: endIndent),
                decoration: BoxDecoration(
                  border: Border(
                    left: Divider.createBorderSide(context,
                        color: color, width: thickness),
                  ),
                ),
              )
            : Container(
                width: thickness / 2,
                margin: EdgeInsets.only(
                    top: indent, bottom: endIndent, left: thickness / 2),
                decoration: DottedDecoration(
                  shape: Shape.line,
                  linePosition: LinePosition.left,
                  color: effectiveColor,
                  strokeWidth: thickness,
                  dash:
                      dash.map((e) => (e * max(thickness, 1)).round()).toList(),
                ),
              ),
      ),
    );
  }
}
