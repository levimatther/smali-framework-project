.class public Lcom/android/dialer/dialpadview/DialpadView;
.super Landroid/widget/LinearLayout;
.source "DialpadView.java"


# static fields
.field private static final DELAY_MULTIPLIER:D = 0.66

.field private static final DURATION_MULTIPLIER:D = 0.8

.field private static final KEY_FRAME_DURATION:I = 0x21

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mButtonIds:[I

.field private mCanDigitsBeEdited:Z

.field private mDelete:Landroid/widget/ImageButton;

.field private mDigits:Landroid/widget/EditText;

.field private mIldCountry:Landroid/widget/TextView;

.field private mIldRate:Landroid/widget/TextView;

.field private final mIsLandscape:Z

.field private final mIsRtl:Z

.field private mOverflowMenuButton:Landroid/view/View;

.field private mRateContainer:Landroid/view/ViewGroup;

.field private mRippleColor:Landroid/content/res/ColorStateList;

.field private mTranslateDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/android/dialer/dialpadview/DialpadView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/dialpadview/DialpadView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/android/dialer/dialpadview/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, v0}, Lcom/android/dialer/dialpadview/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0xc

    new-array p3, p3, [I

    .line 63
    fill-array-data p3, :array_0

    iput-object p3, p0, Lcom/android/dialer/dialpadview/DialpadView;->mButtonIds:[I

    .line 99
    sget-object p3, Lcom/android/dialer/R$styleable;->Dialpad:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 100
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/android/dialer/dialpadview/DialpadView;->mRippleColor:Landroid/content/res/ColorStateList;

    .line 101
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    invoke-virtual {p0}, Lcom/android/dialer/dialpadview/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070132

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/dialpadview/DialpadView;->mTranslateDistance:I

    .line 107
    invoke-virtual {p0}, Lcom/android/dialer/dialpadview/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iput-boolean p1, p0, Lcom/android/dialer/dialpadview/DialpadView;->mIsLandscape:Z

    .line 109
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p1

    if-ne p1, v0, :cond_1

    move p3, v0

    :cond_1
    iput-boolean p3, p0, Lcom/android/dialer/dialpadview/DialpadView;->mIsRtl:Z

    return-void

    :array_0
    .array-data 4
        0x7f090364
        0x7f090229
        0x7f090316
        0x7f0902fb
        0x7f09016d
        0x7f090167
        0x7f0902b9
        0x7f0902b2
        0x7f090146
        0x7f09021e
        0x7f0902d2
        0x7f09024d
    .end array-data
.end method

.method private getDrawableCompat(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 217
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 219
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private getKeyButtonAnimationDelay(I)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 324
    iget-boolean v2, v0, Lcom/android/dialer/dialpadview/DialpadView;->mIsLandscape:Z

    const v5, 0x7f090364

    const/16 v7, 0xe7

    const v8, 0x7f090146

    const/16 v9, 0xc6

    const/16 v10, 0xa5

    const v11, 0x7f09024d

    const/16 v13, 0x84

    const v14, 0x7f090167

    const v15, 0x7f09021e

    const/16 v16, 0x63

    const v12, 0x7f0902b9

    const/16 v17, 0x42

    const v3, 0x7f0902fb

    const/16 v18, 0x21

    const v4, 0x7f090316

    const v6, 0x7f090229

    if-eqz v2, :cond_17

    .line 325
    iget-boolean v2, v0, Lcom/android/dialer/dialpadview/DialpadView;->mIsRtl:Z

    if-eqz v2, :cond_b

    if-ne v1, v3, :cond_0

    return v18

    :cond_0
    if-ne v1, v12, :cond_1

    return v17

    :cond_1
    if-ne v1, v15, :cond_2

    return v16

    :cond_2
    if-ne v1, v11, :cond_3

    return v13

    :cond_3
    if-ne v1, v4, :cond_4

    return v10

    :cond_4
    if-ne v1, v14, :cond_5

    return v9

    :cond_5
    if-ne v1, v8, :cond_6

    return v7

    :cond_6
    if-ne v1, v5, :cond_7

    const/16 v2, 0x108

    return v2

    :cond_7
    if-ne v1, v6, :cond_8

    const/16 v2, 0x129

    return v2

    :cond_8
    const v2, 0x7f09016d

    if-ne v1, v2, :cond_9

    const/16 v2, 0x14a

    return v2

    :cond_9
    const v2, 0x7f0902b2

    if-eq v1, v2, :cond_a

    const v2, 0x7f0902d2

    if-ne v1, v2, :cond_22

    :cond_a
    const/16 v1, 0x16b

    return v1

    :cond_b
    const v2, 0x7f09016d

    const v11, 0x7f0902b2

    if-ne v1, v6, :cond_c

    return v18

    :cond_c
    if-ne v1, v2, :cond_d

    return v17

    :cond_d
    if-ne v1, v11, :cond_e

    return v16

    :cond_e
    const v2, 0x7f0902d2

    if-ne v1, v2, :cond_f

    return v13

    :cond_f
    if-ne v1, v4, :cond_10

    return v10

    :cond_10
    if-ne v1, v14, :cond_11

    return v9

    :cond_11
    if-ne v1, v8, :cond_12

    return v7

    :cond_12
    if-ne v1, v5, :cond_13

    const/16 v2, 0x108

    return v2

    :cond_13
    if-ne v1, v3, :cond_14

    const/16 v2, 0x129

    return v2

    :cond_14
    if-ne v1, v12, :cond_15

    const/16 v2, 0x14a

    return v2

    :cond_15
    if-eq v1, v15, :cond_16

    const v2, 0x7f09024d

    if-ne v1, v2, :cond_22

    :cond_16
    const/16 v1, 0x16b

    return v1

    :cond_17
    if-ne v1, v6, :cond_18

    return v18

    :cond_18
    if-ne v1, v4, :cond_19

    return v17

    :cond_19
    if-ne v1, v3, :cond_1a

    return v16

    :cond_1a
    const v2, 0x7f09016d

    if-ne v1, v2, :cond_1b

    return v13

    :cond_1b
    if-ne v1, v14, :cond_1c

    return v10

    :cond_1c
    if-ne v1, v12, :cond_1d

    return v9

    :cond_1d
    const v2, 0x7f0902b2

    if-ne v1, v2, :cond_1e

    return v7

    :cond_1e
    if-ne v1, v8, :cond_1f

    const/16 v2, 0x108

    return v2

    :cond_1f
    if-ne v1, v15, :cond_20

    const/16 v2, 0x129

    return v2

    :cond_20
    const v2, 0x7f0902d2

    if-ne v1, v2, :cond_21

    const/16 v2, 0x14a

    return v2

    :cond_21
    if-eq v1, v5, :cond_23

    const v2, 0x7f09024d

    if-ne v1, v2, :cond_22

    goto :goto_0

    .line 400
    :cond_22
    sget-object v1, Lcom/android/dialer/dialpadview/DialpadView;->TAG:Ljava/lang/String;

    const-string v2, "Attempted to get animation delay for invalid key button id."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_23
    :goto_0
    const/16 v1, 0x16b

    return v1
.end method

.method private getKeyButtonAnimationDuration(I)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 412
    iget-boolean v2, v0, Lcom/android/dialer/dialpadview/DialpadView;->mIsLandscape:Z

    const v3, 0x7f09024d

    const v4, 0x7f090364

    const v5, 0x7f09021e

    const v6, 0x7f090146

    const/16 v7, 0x129

    const v8, 0x7f0902b9

    const v9, 0x7f0902d2

    const v10, 0x7f090167

    const v11, 0x7f0902b2

    const v13, 0x7f09016d

    const v14, 0x7f0902fb

    const v15, 0x7f090316

    const/16 v16, 0x14a

    const v12, 0x7f090229

    if-eqz v2, :cond_b

    .line 413
    iget-boolean v2, v0, Lcom/android/dialer/dialpadview/DialpadView;->mIsRtl:Z

    if-eqz v2, :cond_5

    if-eq v1, v12, :cond_4

    if-eq v1, v13, :cond_4

    if-eq v1, v11, :cond_4

    if-ne v1, v9, :cond_0

    goto :goto_1

    :cond_0
    if-eq v1, v15, :cond_3

    if-eq v1, v10, :cond_3

    if-eq v1, v6, :cond_3

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    if-eq v1, v14, :cond_2

    if-eq v1, v8, :cond_2

    if-eq v1, v5, :cond_2

    if-ne v1, v3, :cond_e

    :cond_2
    return v16

    :cond_3
    :goto_0
    return v7

    :cond_4
    :goto_1
    const/16 v1, 0x108

    return v1

    :cond_5
    if-eq v1, v12, :cond_a

    if-eq v1, v13, :cond_a

    if-eq v1, v11, :cond_a

    if-ne v1, v9, :cond_6

    goto :goto_3

    :cond_6
    if-eq v1, v15, :cond_9

    if-eq v1, v10, :cond_9

    if-eq v1, v6, :cond_9

    if-ne v1, v4, :cond_7

    goto :goto_2

    :cond_7
    if-eq v1, v14, :cond_8

    if-eq v1, v8, :cond_8

    if-eq v1, v5, :cond_8

    if-ne v1, v3, :cond_e

    :cond_8
    const/16 v1, 0x108

    return v1

    :cond_9
    :goto_2
    return v7

    :cond_a
    :goto_3
    return v16

    :cond_b
    if-eq v1, v12, :cond_11

    if-eq v1, v15, :cond_11

    if-eq v1, v14, :cond_11

    if-eq v1, v13, :cond_11

    if-eq v1, v10, :cond_11

    if-ne v1, v8, :cond_c

    goto :goto_6

    :cond_c
    if-eq v1, v11, :cond_10

    if-eq v1, v6, :cond_10

    if-ne v1, v5, :cond_d

    goto :goto_5

    :cond_d
    if-eq v1, v9, :cond_f

    if-eq v1, v4, :cond_f

    if-ne v1, v3, :cond_e

    goto :goto_4

    .line 463
    :cond_e
    sget-object v1, Lcom/android/dialer/dialpadview/DialpadView;->TAG:Ljava/lang/String;

    const-string v2, "Attempted to get animation duration for invalid key button id."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_f
    :goto_4
    const/16 v1, 0x108

    return v1

    :cond_10
    :goto_5
    return v7

    :cond_11
    :goto_6
    return v16
.end method

.method private setupKeypad()V
    .locals 14

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 131
    fill-array-data v0, :array_0

    .line 147
    invoke-virtual {p0}, Lcom/android/dialer/dialpadview/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 157
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fa"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Ljava/text/DecimalFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    goto :goto_0

    .line 160
    :cond_0
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v2}, Ljava/text/DecimalFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    move v4, v3

    .line 163
    :goto_1
    iget-object v5, p0, Lcom/android/dialer/dialpadview/DialpadView;->mButtonIds:[I

    array-length v6, v5

    if-ge v4, v6, :cond_5

    .line 164
    aget v5, v5, v4

    invoke-virtual {p0, v5}, Lcom/android/dialer/dialpadview/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/dialer/dialpadview/DialpadKeyButton;

    const v6, 0x7f090131

    .line 165
    invoke-virtual {v5, v6}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f090130

    .line 166
    invoke-virtual {v5, v7}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 170
    iget-object v8, p0, Lcom/android/dialer/dialpadview/DialpadView;->mButtonIds:[I

    aget v9, v8, v4

    const v10, 0x7f09024d

    if-ne v9, v10, :cond_1

    const v8, 0x7f1101ff

    .line 171
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_2
    move-object v10, v8

    goto :goto_3

    .line 173
    :cond_1
    aget v8, v8, v4

    const v9, 0x7f0902d2

    if-ne v8, v9, :cond_2

    const v8, 0x7f110201

    .line 174
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_2
    int-to-long v8, v4

    .line 177
    invoke-virtual {v2, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    .line 181
    aget v9, v0, v4

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 183
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v10

    .line 184
    new-instance v11, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-direct {v11, v9}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v11}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v11

    .line 186
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    .line 187
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v13, v9

    const/16 v9, 0x21

    .line 184
    invoke-interface {v10, v11, v12, v13, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 193
    :goto_3
    invoke-virtual {p0}, Lcom/android/dialer/dialpadview/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v11, 0x7f080080

    invoke-direct {p0, v9, v11}, Lcom/android/dialer/dialpadview/DialpadView;->getDrawableCompat(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/RippleDrawable;

    .line 194
    iget-object v11, p0, Lcom/android/dialer/dialpadview/DialpadView;->mRippleColor:Landroid/content/res/ColorStateList;

    if-eqz v11, :cond_3

    .line 195
    invoke-virtual {v9, v11}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 198
    :cond_3
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 200
    invoke-virtual {v5, v10}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {v5, v9}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v7, :cond_4

    .line 204
    aget v5, v0, v4

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_5
    const v0, 0x7f090229

    .line 208
    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpadview/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/dialpadview/DialpadKeyButton;

    const v2, 0x7f1101c3

    .line 209
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->setLongHoverContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f090364

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpadview/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/dialpadview/DialpadKeyButton;

    const v2, 0x7f1101a3

    .line 212
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->setLongHoverContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :array_0
    .array-data 4
        0x7f1101f3
        0x7f1101f4
        0x7f1101f5
        0x7f1101f6
        0x7f1101f7
        0x7f1101f8
        0x7f1101f9
        0x7f1101fa
        0x7f1101fb
        0x7f1101fc
        0x7f110200
        0x7f1101fe
    .end array-data
.end method


# virtual methods
.method public animateShow()V
    .locals 9

    .line 277
    new-instance v0, Lcom/android/dialer/dialpadview/DialpadView$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/dialpadview/DialpadView$1;-><init>(Lcom/android/dialer/dialpadview/DialpadView;)V

    const/4 v1, 0x0

    .line 279
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/dialpadview/DialpadView;->mButtonIds:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 280
    aget v2, v2, v1

    invoke-direct {p0, v2}, Lcom/android/dialer/dialpadview/DialpadView;->getKeyButtonAnimationDelay(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe51eb851eb851fL    # 0.66

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 281
    iget-object v3, p0, Lcom/android/dialer/dialpadview/DialpadView;->mButtonIds:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Lcom/android/dialer/dialpadview/DialpadView;->getKeyButtonAnimationDuration(I)I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 282
    iget-object v4, p0, Lcom/android/dialer/dialpadview/DialpadView;->mButtonIds:[I

    aget v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/android/dialer/dialpadview/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/dialer/dialpadview/DialpadKeyButton;

    .line 284
    invoke-virtual {v4}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 285
    iget-boolean v6, p0, Lcom/android/dialer/dialpadview/DialpadView;->mIsLandscape:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 288
    iget-boolean v6, p0, Lcom/android/dialer/dialpadview/DialpadView;->mIsRtl:Z

    if-eqz v6, :cond_0

    const/4 v6, -0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    :goto_1
    iget v8, p0, Lcom/android/dialer/dialpadview/DialpadView;->mTranslateDistance:I

    mul-int/2addr v6, v8

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->setTranslationX(F)V

    .line 289
    invoke-virtual {v5, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    .line 292
    :cond_1
    iget v6, p0, Lcom/android/dialer/dialpadview/DialpadView;->mTranslateDistance:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Lcom/android/dialer/dialpadview/DialpadKeyButton;->setTranslationY(F)V

    .line 293
    invoke-virtual {v5, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 295
    :goto_2
    sget-object v4, Lcom/android/dialer/animation/AnimUtils;->EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

    .line 296
    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    int-to-long v5, v2

    .line 297
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v3, v3

    .line 298
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 299
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 300
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public canDigitsBeEdited()Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/android/dialer/dialpadview/DialpadView;->mCanDigitsBeEdited:Z

    return v0
.end method

.method public getDeleteButton()Landroid/widget/ImageButton;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/android/dialer/dialpadview/DialpadView;->mDelete:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getDigits()Landroid/widget/EditText;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/android/dialer/dialpadview/DialpadView;->mDigits:Landroid/widget/EditText;

    return-object v0
.end method

.method public getOverflowMenuButton()Landroid/view/View;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/android/dialer/dialpadview/DialpadView;->mOverflowMenuButton:Landroid/view/View;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 114
    invoke-direct {p0}, Lcom/android/dialer/dialpadview/DialpadView;->setupKeypad()V

    const v0, 0x7f090139

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpadview/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/dialer/dialpadview/DialpadView;->mDigits:Landroid/widget/EditText;

    const v0, 0x7f090118

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpadview/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/dialer/dialpadview/DialpadView;->mDelete:Landroid/widget/ImageButton;

    const v0, 0x7f090133

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpadview/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpadview/DialpadView;->mOverflowMenuButton:Landroid/view/View;

    const v0, 0x7f09025d

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpadview/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/dialer/dialpadview/DialpadView;->mRateContainer:Landroid/view/ViewGroup;

    const v1, 0x7f09018f

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/dialpadview/DialpadView;->mIldCountry:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/android/dialer/dialpadview/DialpadView;->mRateContainer:Landroid/view/ViewGroup;

    const v1, 0x7f090190

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/dialpadview/DialpadView;->mIldRate:Landroid/widget/TextView;

    .line 123
    invoke-virtual {p0}, Lcom/android/dialer/dialpadview/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 124
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/dialer/dialpadview/DialpadView;->mDigits:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setCallRateInformation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object p1, p0, Lcom/android/dialer/dialpadview/DialpadView;->mRateContainer:Landroid/view/ViewGroup;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpadview/DialpadView;->mRateContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/android/dialer/dialpadview/DialpadView;->mIldCountry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object p1, p0, Lcom/android/dialer/dialpadview/DialpadView;->mIldRate:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCanDigitsBeEdited(Z)V
    .locals 3

    const v0, 0x7f090118

    .line 237
    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpadview/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    .line 238
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090133

    .line 239
    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpadview/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    .line 240
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090139

    .line 242
    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpadview/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 243
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setClickable(Z)V

    .line 244
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 245
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 246
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 248
    iput-boolean p1, p0, Lcom/android/dialer/dialpadview/DialpadView;->mCanDigitsBeEdited:Z

    return-void
.end method

.method public setShowVoicemailButton(Z)V
    .locals 1

    const v0, 0x7f090132

    .line 224
    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpadview/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 226
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
