.class public Lorg/telegram/ui/Cells/CheckBoxCell;
.super Landroid/widget/FrameLayout;
.source "CheckBoxCell.java"


# static fields
.field private static paint:Landroid/graphics/Paint;


# instance fields
.field private checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

.field private needDivider:Z

.field private textView:Landroid/widget/TextView;

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v10, 0x11

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v11, 0x1

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    sget-object v0, Lorg/telegram/ui/Cells/CheckBoxCell;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lorg/telegram/ui/Cells/CheckBoxCell;->paint:Landroid/graphics/Paint;

    .line 42
    sget-object v0, Lorg/telegram/ui/Cells/CheckBoxCell;->paint:Landroid/graphics/Paint;

    const v1, -0x262627

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    sget-object v0, Lorg/telegram/ui/Cells/CheckBoxCell;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    const v1, -0xdededf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setLines(I)V

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 53
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1

    move v0, v7

    :goto_0
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 54
    iget-object v9, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2

    move v2, v7

    :goto_1
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_3

    move v3, v10

    :goto_2
    int-to-float v3, v3

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_4

    const/16 v5, 0x2e

    :goto_3
    int-to-float v5, v5

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 58
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    const v1, -0xd07337

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setLines(I)V

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 65
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_5

    move v0, v8

    :goto_4
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 66
    iget-object v9, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40800000    # -1.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_6

    move v2, v8

    :goto_5
    or-int/lit8 v2, v2, 0x30

    const/high16 v3, 0x41880000    # 17.0f

    const/high16 v5, 0x41880000    # 17.0f

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 70
    new-instance v0, Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/CheckBoxSquare;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    .line 71
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    const/16 v5, 0x12

    const/high16 v6, 0x41900000    # 18.0f

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_7

    :goto_6
    or-int/lit8 v7, v7, 0x30

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    int-to-float v8, v0

    const/high16 v9, 0x41700000    # 15.0f

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_9

    :goto_8
    int-to-float v10, v10

    move v11, v4

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    return-void

    :cond_1
    move v0, v8

    .line 53
    goto/16 :goto_0

    :cond_2
    move v2, v8

    .line 54
    goto/16 :goto_1

    :cond_3
    const/16 v3, 0x2e

    goto/16 :goto_2

    :cond_4
    move v5, v10

    goto/16 :goto_3

    :cond_5
    move v0, v7

    .line 65
    goto :goto_4

    :cond_6
    move v2, v7

    .line 66
    goto :goto_5

    :cond_7
    move v7, v8

    .line 71
    goto :goto_6

    :cond_8
    move v0, v10

    goto :goto_7

    :cond_9
    const/4 v10, 0x0

    goto :goto_8
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxSquare;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->needDivider:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/Cells/CheckBoxCell;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 110
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, -0x80000000

    const/high16 v5, 0x41900000    # 18.0f

    const/high16 v4, 0x40000000    # 2.0f

    .line 76
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->needDivider:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v3

    invoke-virtual {p0, v2, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setMeasuredDimension(II)V

    .line 78
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x42080000    # 34.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v0, v1, v2

    .line 80
    .local v0, "availableWidth":I
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    div-int/lit8 v2, v0, 0x2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 81
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v0, v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 82
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/CheckBoxSquare;->measure(II)V

    .line 83
    return-void

    .line 76
    .end local v0    # "availableWidth":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setChecked(ZZ)V
    .locals 1
    .param p1, "checked"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    .line 99
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "checked"    # Z
    .param p4, "divider"    # Z

    .prologue
    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v1, p3, v0}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    .line 92
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->needDivider:Z

    .line 94
    if-nez p4, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setWillNotDraw(Z)V

    .line 95
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    return-void
.end method
