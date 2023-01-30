.class public Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LetterTileDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/lettertiles/LetterTileDrawable$Shape;,
        Lcom/android/contacts/common/lettertiles/LetterTileDrawable$ContactType;
    }
.end annotation


# static fields
.field private static final ALPHA:I = 0x8a

.field public static final SHAPE_CIRCLE:I = 0x1

.field public static final SHAPE_RECTANGLE:I = 0x2

.field private static final SPAM_ALPHA:I = 0xff

.field public static final TYPE_BUSINESS:I = 0x2

.field public static final TYPE_CONFERENCE:I = 0x6

.field public static final TYPE_DEFAULT:I = 0x1

.field public static final TYPE_GENERIC_AVATAR:I = 0x4

.field public static final TYPE_PERSON:I = 0x1

.field public static final TYPE_SPAM:I = 0x5

.field public static final TYPE_VOICEMAIL:I = 0x3

.field private static final VECTOR_ICON_SCALE:F = 0.7f


# instance fields
.field private mColor:I

.field private final mColors:Landroid/content/res/TypedArray;

.field private mContactType:I

.field private final mDefaultBusinessAvatar:Landroid/graphics/drawable/Drawable;

.field private final mDefaultColor:I

.field private final mDefaultConferenceAvatar:Landroid/graphics/drawable/Drawable;

.field private final mDefaultPersonAvatar:Landroid/graphics/drawable/Drawable;

.field private final mDefaultSpamAvatar:Landroid/graphics/drawable/Drawable;

.field private final mDefaultVoicemailAvatar:Landroid/graphics/drawable/Drawable;

.field private mDisplayName:Ljava/lang/String;

.field private final mFirstChar:[C

.field private mIsCircle:Z

.field private mLetter:Ljava/lang/Character;

.field private final mLetterToTileRatio:F

.field private mOffset:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRect:Landroid/graphics/Rect;

.field private mScale:F

.field private final mSpamColor:I

.field private final mTileFontColor:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 4

    .line 119
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    new-array v1, v0, [C

    .line 94
    iput-object v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mFirstChar:[C

    .line 109
    iput v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mContactType:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 110
    iput v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mScale:F

    const/4 v1, 0x0

    .line 111
    iput v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mOffset:F

    const/4 v1, 0x0

    .line 112
    iput-boolean v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mIsCircle:Z

    const/4 v2, 0x0

    .line 115
    iput-object v2, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    const v3, 0x7f03000a

    .line 120
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mColors:Landroid/content/res/TypedArray;

    const v3, 0x7f060188

    .line 121
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mSpamColor:I

    const v3, 0x7f0600f4

    .line 122
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mDefaultColor:I

    const v3, 0x7f0600f5

    .line 123
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mTileFontColor:I

    const v3, 0x7f07019d

    .line 124
    invoke-virtual {p1, v3, v0, v0}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mLetterToTileRatio:F

    const v3, 0x7f080198

    .line 126
    invoke-virtual {p1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mDefaultPersonAvatar:Landroid/graphics/drawable/Drawable;

    const v3, 0x7f0801ab

    .line 127
    invoke-virtual {p1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mDefaultBusinessAvatar:Landroid/graphics/drawable/Drawable;

    const v3, 0x7f0801f9

    .line 128
    invoke-virtual {p1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mDefaultVoicemailAvatar:Landroid/graphics/drawable/Drawable;

    const v3, 0x7f0801e9

    .line 129
    invoke-virtual {p1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mDefaultSpamAvatar:Landroid/graphics/drawable/Drawable;

    const v3, 0x7f0801c7

    .line 130
    invoke-virtual {p1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mDefaultConferenceAvatar:Landroid/graphics/drawable/Drawable;

    .line 132
    iget-object v2, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    const v3, 0x7f1102cc

    .line 133
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 132
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 134
    iget-object p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 135
    iget-object p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 136
    iget-object p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 137
    iget-object p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 138
    iget p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mDefaultColor:I

    iput p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mColor:I

    return-void
.end method

.method private drawLetterTile(Landroid/graphics/Canvas;)V
    .locals 11

    .line 201
    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    invoke-virtual {p0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 206
    iget-boolean v2, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mIsCircle:Z

    if-eqz v2, :cond_0

    .line 207
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 213
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    const/16 v3, 0x8a

    if-eqz v2, :cond_1

    .line 215
    iget-object v4, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mFirstChar:[C

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    const/4 v5, 0x0

    aput-char v2, v4, v5

    .line 218
    iget-object v2, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mScale:F

    iget v6, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mLetterToTileRatio:F

    mul-float/2addr v4, v6

    int-to-float v1, v1

    mul-float/2addr v4, v1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 219
    iget-object v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mFirstChar:[C

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v5, v4, v6}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 220
    iget-object v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    const-string v2, "sans-serif"

    invoke-static {v2, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 221
    iget-object v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mTileFontColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    iget-object v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 226
    iget-object v5, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mFirstChar:[C

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 230
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v8, v1

    .line 231
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mOffset:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    sub-float v9, v1, v0

    iget-object v10, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    .line 226
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 235
    :cond_1
    iget v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mContactType:I

    invoke-direct {p0, v0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->getDrawableForContactType(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 241
    iget v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mScale:F

    iget v2, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mOffset:F

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->getScaledBounds(FF)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 242
    iget-object v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mDefaultSpamAvatar:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_2

    const/16 v3, 0xff

    :cond_2
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 243
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    return-void

    .line 237
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to find drawable for contact type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mContactType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->createIllegalStateFailException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public static getContactTypeFromPrimitives(ZZZIZ)I
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    const/4 p0, 0x2

    if-eqz p2, :cond_2

    return p0

    :cond_2
    if-ne p3, p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    if-eqz p4, :cond_4

    const/4 p0, 0x6

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private getDrawableForContactType(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x2

    const v1, 0x3f333333    # 0.7f

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 173
    iget-object p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mDefaultPersonAvatar:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 168
    :cond_0
    iput v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mScale:F

    .line 169
    iget-object p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mDefaultConferenceAvatar:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 165
    :cond_1
    iput v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mScale:F

    .line 166
    iget-object p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mDefaultSpamAvatar:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 162
    :cond_2
    iput v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mScale:F

    .line 163
    iget-object p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mDefaultVoicemailAvatar:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 159
    :cond_3
    iput v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mScale:F

    .line 160
    iget-object p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mDefaultBusinessAvatar:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private getScaledBounds(FF)Landroid/graphics/Rect;
    .locals 5

    .line 144
    invoke-virtual {p0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    float-to-int p1, p1

    .line 149
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int/2addr v1, p1

    .line 150
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int/2addr v2, p1

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 151
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    add-int/2addr v3, p1

    .line 152
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    add-int/2addr v4, p1

    int-to-float p1, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr p2, v4

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 148
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method private static isEnglishLetter(C)Z
    .locals 1

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private pickColor(Ljava/lang/String;)I
    .locals 2

    .line 258
    iget v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mContactType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 259
    iget p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mSpamColor:I

    return p1

    :cond_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 264
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mColors:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    rem-int/2addr p1, v0

    .line 272
    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mColors:Landroid/content/res/TypedArray;

    iget v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mDefaultColor:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    return p1

    .line 265
    :cond_2
    :goto_0
    iget p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mDefaultColor:I

    return p1
.end method

.method private setContactType(I)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 0

    .line 349
    iput p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mContactType:I

    return-object p0
.end method

.method private setLetterAndColorFromContactDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 2

    .line 339
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->isEnglishLetter(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 342
    iput-object p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    .line 344
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->pickColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mColor:I

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 183
    invoke-virtual {p0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->drawLetterTile(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getBitmap(II)Landroid/graphics/Bitmap;
    .locals 2

    .line 192
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 193
    invoke-virtual {p0, v1, v1, p1, p2}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setBounds(IIII)V

    .line 194
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .line 248
    iget v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mColor:I

    return v0
.end method

.method public getContactType()I
    .locals 1

    .line 355
    iget v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mContactType:I

    return v0
.end method

.method public getLetter()Ljava/lang/Character;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1

    .line 292
    iget-boolean v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mIsCircle:Z

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 298
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setCanonicalDialerLetterTileDetails(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 383
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setIsCircular(Z)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    if-ne p4, v0, :cond_3

    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    .line 393
    iget-object p3, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mDisplayName:Ljava/lang/String;

    .line 395
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    :cond_2
    return-object p0

    .line 399
    :cond_3
    iput-object p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mDisplayName:Ljava/lang/String;

    .line 400
    invoke-direct {p0, p4}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setContactType(I)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    if-eq p4, v0, :cond_4

    const/4 p1, 0x0

    .line 404
    invoke-direct {p0, p1, p1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setLetterAndColorFromContactDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 407
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setLetterAndColorFromContactDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    goto :goto_1

    .line 409
    :cond_5
    invoke-direct {p0, p1, p1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setLetterAndColorFromContactDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    :goto_1
    return-object p0
.end method

.method public setColor(I)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 0

    .line 252
    iput p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mColor:I

    return-object p0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setIsCircular(Z)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 0

    .line 359
    iput-boolean p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mIsCircle:Z

    return-object p0
.end method

.method public setLetter(Ljava/lang/Character;)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    return-object p0
.end method

.method public setOffset(F)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 1

    const/high16 v0, -0x41000000    # -0.5f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 323
    :goto_0
    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 324
    iput p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mOffset:F

    return-object p0
.end method

.method public setScale(F)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 0

    .line 308
    iput p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mScale:F

    return-object p0
.end method

.method public tileIsCircular()Z
    .locals 1

    .line 364
    iget-boolean v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mIsCircle:Z

    return v0
.end method
