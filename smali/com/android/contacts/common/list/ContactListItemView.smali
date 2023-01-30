.class public Lcom/android/contacts/common/list/ContactListItemView;
.super Landroid/view/ViewGroup;
.source "ContactListItemView.java"

# interfaces
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;,
        Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;,
        Lcom/android/contacts/common/list/ContactListItemView$CallToAction;
    }
.end annotation


# static fields
.field public static final CALL_AND_SHARE:I = 0x3

.field public static final LIGHTBRINGER:I = 0x2

.field public static final NONE:I = 0x0

.field static final SNIPPET_END_MATCH:C = ']'

.field static final SNIPPET_START_MATCH:C = '['

.field private static final SPLIT_PATTERN:Ljava/util/regex/Pattern;

.field public static final VIDEO:I = 0x1


# instance fields
.field private mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mActivatedStateSupported:Z

.field private mAdjustSelectionBoundsEnabled:Z

.field private mBoundsWithoutHeader:Landroid/graphics/Rect;

.field private mCallToAction:I

.field private mCallToActionMargin:I

.field private mCallToActionSize:I

.field private final mCallToActionView:Landroid/widget/ImageView;

.field private mCheckBoxWidth:I

.field private mDataView:Landroid/widget/TextView;

.field private mDataViewHeight:I

.field private mDataViewWidthWeight:I

.field private mDefaultPhotoViewSize:I

.field private mGapBetweenImageAndText:I

.field private mGapBetweenLabelAndData:I

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderWidth:I

.field private mHighlightedPrefix:Ljava/lang/String;

.field private mIsSectionHeaderEnabled:Z

.field private mKeepHorizontalPaddingForPhotoView:Z

.field private mKeepVerticalPaddingForPhotoView:Z

.field private mLabelAndDataViewMaxHeight:I

.field private mLabelView:Landroid/widget/TextView;

.field private mLabelViewHeight:I

.field private mLabelViewWidthWeight:I

.field private mLeftOffset:I

.field private mName:Ljava/lang/String;

.field private mNameHighlightSequence:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mNameTextView:Landroid/widget/TextView;

.field private mNameTextViewHeight:I

.field private mNameTextViewTextColor:I

.field private mNameTextViewTextSize:I

.field private mNumberHighlightSequence:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mNumberTextViewTextSize:I

.field private mPhoneNumber:Ljava/lang/String;

.field private mPhoneticNameTextViewHeight:I

.field private final mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mPhotoViewHeight:I

.field private mPhotoViewWidth:I

.field private mPhotoViewWidthAndHeightAreReady:Z

.field private mPosition:I

.field private mPreferredHeight:I

.field private mPresenceIcon:Landroid/widget/ImageView;

.field private mPresenceIconMargin:I

.field private mPresenceIconSize:I

.field private mQuickContact:Landroid/widget/QuickContactBadge;

.field private mQuickContactEnabled:Z

.field private mRightOffset:I

.field private mSecondaryTextColor:Landroid/content/res/ColorStateList;

.field private mSnippetTextViewHeight:I

.field private mSnippetView:Landroid/widget/TextView;

.field private mStatusTextViewHeight:I

.field private mStatusView:Landroid/widget/TextView;

.field private mSupportVideoCall:Z

.field private final mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

.field private mTextIndent:I

.field private mTextOffsetTop:I

.field private mUnknownNameText:Ljava/lang/CharSequence;

.field private mWorkProfileIcon:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "([\\w-\\.]+)@((?:[\\w]+\\.)+)([a-zA-Z]{2,4})|[\\w]+"

    .line 97
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/ContactListItemView;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 199
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    invoke-static {}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoPosition()Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    const/4 p1, 0x0

    .line 104
    iput p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I

    .line 105
    iput p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    .line 106
    iput p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    const/4 v0, 0x4

    .line 107
    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    const/16 v1, 0x10

    .line 108
    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    .line 109
    iput p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    const/16 v2, 0x30

    .line 115
    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionSize:I

    .line 116
    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionMargin:I

    const/4 v1, 0x3

    .line 121
    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    const/4 v2, 0x5

    .line 123
    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    const/4 v2, 0x1

    .line 136
    iput-boolean v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContactEnabled:Z

    .line 148
    iput p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDefaultPhotoViewSize:I

    .line 169
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    const/high16 v3, -0x1000000

    .line 172
    iput v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewTextColor:I

    .line 183
    iput-boolean v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAdjustSelectionBoundsEnabled:Z

    .line 184
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    const/4 v3, -0x1

    .line 189
    iput v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPosition:I

    .line 190
    iput p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToAction:I

    .line 203
    sget-object v3, Lcom/android/dialer/R$styleable;->ContactListItemView:[I

    if-eqz v3, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/dialer/R$styleable;->ContactListItemView:[I

    invoke-virtual {v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 v3, 0x9

    .line 206
    iget v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I

    .line 207
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I

    .line 210
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 211
    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    .line 212
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    .line 215
    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    .line 216
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    const/16 v0, 0x13

    .line 219
    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    .line 220
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    const/16 v0, 0x14

    .line 222
    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    .line 223
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    const/16 v0, 0x11

    .line 225
    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDefaultPhotoViewSize:I

    .line 226
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDefaultPhotoViewSize:I

    const/16 v0, 0x16

    .line 228
    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    .line 229
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    const/16 v0, 0x17

    .line 231
    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextOffsetTop:I

    .line 232
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextOffsetTop:I

    const/4 v0, 0x2

    .line 234
    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    .line 235
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    const/16 v0, 0xa

    .line 237
    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    .line 238
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    const/16 v0, 0xb

    .line 240
    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewTextColor:I

    .line 241
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewTextColor:I

    const/16 v0, 0xc

    .line 247
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700e6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    .line 245
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewTextSize:I

    .line 248
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0700e2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNumberTextViewTextSize:I

    const/16 v0, 0x19

    .line 250
    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionSize:I

    .line 251
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionSize:I

    const/16 v0, 0x18

    .line 253
    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionMargin:I

    .line 254
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionMargin:I

    .line 260
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0700ec

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 261
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070257

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 262
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 263
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 258
    invoke-virtual {p0, v0, v4, v3, v5}, Lcom/android/contacts/common/list/ContactListItemView;->setPaddingRelative(IIII)V

    .line 266
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 269
    :cond_0
    new-instance p2, Lcom/android/contacts/common/format/TextHighlighter;

    invoke-direct {p2, v2}, Lcom/android/contacts/common/format/TextHighlighter;-><init>(I)V

    iput-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    .line 271
    sget-object p2, Lcom/android/dialer/R$styleable;->Theme:[I

    if-eqz p2, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lcom/android/dialer/R$styleable;->Theme:[I

    invoke-virtual {p2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 273
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    .line 274
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700eb

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderWidth:I

    .line 279
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 280
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 283
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    .line 284
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    .line 286
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionView:Landroid/widget/ImageView;

    const p2, 0x7f0900ac

    .line 287
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setId(I)V

    .line 288
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionView:Landroid/widget/ImageView;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionSize:I

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionView:Landroid/widget/ImageView;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 290
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionView:Landroid/widget/ImageView;

    .line 291
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f060171

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 290
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 292
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 294
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setLayoutDirection(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 0

    .line 193
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 195
    iput-boolean p3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSupportVideoCall:Z

    return-void
.end method

.method private ensurePhotoViewSize()V
    .locals 2

    .line 813
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    if-nez v0, :cond_2

    .line 814
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    .line 815
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContactEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 816
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 817
    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    .line 819
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepVerticalPaddingForPhotoView:Z

    if-nez v0, :cond_1

    .line 820
    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    :cond_1
    const/4 v0, 0x1

    .line 824
    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    :cond_2
    return-void
.end method

.method private getDefaultPhotoLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 838
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 839
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 840
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-object v0
.end method

.method public static getDefaultPhotoPosition()Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;
    .locals 2

    .line 298
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 299
    sget-object v0, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->RIGHT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    :goto_0
    return-object v0
.end method

.method private getTextEllipsis()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .line 1232
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method static synthetic lambda$setCallToAction$0(Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;ILandroid/view/View;)V
    .locals 0

    .line 346
    invoke-interface {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;->onCallAndShareIconClicked(I)V

    return-void
.end method

.method static synthetic lambda$setCallToAction$1(Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;ILandroid/view/View;)V
    .locals 0

    .line 352
    invoke-interface {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;->onVideoCallIconClicked(I)V

    return-void
.end method

.method static synthetic lambda$setCallToAction$2(Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;ILandroid/view/View;)V
    .locals 0

    .line 359
    invoke-interface {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;->onLightbringerIconClicked(I)V

    return-void
.end method

.method private pointIsInView(FF)Z
    .locals 1

    .line 1553
    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLeftOffset:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mRightOffset:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    .line 1556
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTop()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1111
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private snippetize(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4

    move v0, p2

    move v1, p3

    .line 1464
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1465
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    move p3, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_1
    add-int/lit8 v1, p2, -0x1

    move v2, v1

    move v1, p3

    :goto_2
    const/4 v3, -0x1

    if-le v2, v3, :cond_3

    if-lez p3, :cond_3

    .line 1479
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, p3

    move p2, v2

    :cond_2
    add-int/lit8 p3, p3, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    move p3, v0

    .line 1490
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    if-lez v1, :cond_5

    .line 1491
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_4

    move p3, v0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1498
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "..."

    if-lez p2, :cond_6

    .line 1500
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    :cond_6
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p3, p1, :cond_7

    .line 1504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static split(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 311
    sget-object v0, Lcom/android/contacts/common/list/ContactListItemView;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private updateSnippet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1414
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1417
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/contacts/common/util/SearchUtil;->cleanStartAndEndOfSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1421
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1422
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    .line 1423
    invoke-static {p3}, Lcom/android/contacts/common/list/ContactListItemView;->split(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    .line 1424
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1425
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 1433
    :cond_2
    invoke-static {p1, p2}, Lcom/android/contacts/common/util/SearchUtil;->findMatchingLine(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/util/SearchUtil$MatchedLine;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1435
    iget-object p2, p1, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->line:Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 1440
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0a0027

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 1441
    iget-object p3, p1, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->line:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-le p3, p2, :cond_3

    .line 1442
    iget-object p3, p1, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->line:Ljava/lang/String;

    iget p1, p1, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->startIndex:I

    invoke-direct {p0, p3, p1, p2}, Lcom/android/contacts/common/list/ContactListItemView;->snippetize(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1444
    :cond_3
    iget-object p1, p1, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->line:Ljava/lang/String;

    return-object p1

    :cond_4
    :goto_0
    return-object v1
.end method


# virtual methods
.method public addNameHighlightSequence(II)V
    .locals 2

    .line 980
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;

    invoke-direct {v1, p1, p2}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNumberHighlightSequence(II)V
    .locals 2

    .line 990
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;

    invoke-direct {v1, p1, p2}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 2

    .line 799
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAdjustSelectionBoundsEnabled:Z

    if-eqz v0, :cond_0

    .line 800
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 801
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 802
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 803
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_0
    return-void
.end method

.method public clearHighlightSequences()V
    .locals 1

    .line 968
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 969
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 970
    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHighlightedPrefix:Ljava/lang/String;

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 867
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 871
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 846
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 847
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public getCallToAction()I
    .locals 1

    .line 373
    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToAction:I

    return v0
.end method

.method public getDataView()Landroid/widget/TextView;
    .locals 4

    .line 1118
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1119
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 1120
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1121
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1122
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNumberTextViewTextSize:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1123
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const v1, 0x7f1201db

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 1124
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 1125
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1126
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const v1, 0x7f0900d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1127
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 1129
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800b8

    .line 1130
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1129
    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1132
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getDefaultPhotoViewSize()I
    .locals 1

    .line 829
    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDefaultPhotoViewSize:I

    return v0
.end method

.method public getLabelView()Landroid/widget/TextView;
    .locals 4

    .line 1032
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1033
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    .line 1034
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1037
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1038
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1039
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const v2, 0x7f1201db

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 1040
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v2, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_0

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1046
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1047
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNumberTextViewTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1049
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const v1, 0x7f0900d1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1051
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800b8

    .line 1052
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1051
    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1054
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1056
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNameTextView()Landroid/widget/TextView;
    .locals 4

    .line 995
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 996
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 997
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 998
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 999
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewTextSize:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1002
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1003
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1004
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 1005
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const v1, 0x7f0900d2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1006
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 1008
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800ba

    .line 1009
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1008
    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1011
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 1012
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 1098
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoView()Landroid/widget/ImageView;
    .locals 2

    .line 918
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 919
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    .line 920
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 922
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 923
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 924
    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 377
    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPosition:I

    return v0
.end method

.method public getQuickContact()Landroid/widget/QuickContactBadge;
    .locals 6

    .line 897
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContactEnabled:Z

    if-eqz v0, :cond_2

    .line 900
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-nez v0, :cond_1

    .line 901
    new-instance v0, Landroid/widget/QuickContactBadge;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    .line 902
    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 903
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 904
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 906
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1101ae

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 907
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 905
    invoke-virtual {v0, v2}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 911
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 913
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    return-object v0

    .line 898
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "QuickContact is disabled for this view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSnippetView()Landroid/widget/TextView;
    .locals 2

    .line 1157
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1158
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 1159
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1160
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1161
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const v1, 0x1030046

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 1162
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 1163
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1164
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1166
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStatusView()Landroid/widget/TextView;
    .locals 2

    .line 1171
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1172
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 1173
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1174
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1175
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const v1, 0x1030046

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 1176
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1177
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1178
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 1179
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1181
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideDisplayName()V
    .locals 1

    .line 1315
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1316
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1317
    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method protected isVisible(Landroid/view/View;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 808
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 859
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 860
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    .line 554
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingLeft()I

    move-result p1

    .line 555
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingRight()I

    move-result p3

    sub-int p3, p4, p3

    .line 557
    invoke-static {p0}, Lcom/android/dialer/util/ViewUtil;->isViewLayoutRtl(Landroid/view/View;)Z

    move-result v0

    .line 560
    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mIsSectionHeaderEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    if-eqz v0, :cond_0

    move p3, p4

    goto :goto_0

    :cond_0
    move p1, v2

    .line 567
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 568
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v3, p5, 0x0

    sub-int/2addr v3, v1

    .line 569
    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextOffsetTop:I

    add-int/2addr v3, v4

    .line 571
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderWidth:I

    sub-int v5, p3, v5

    goto :goto_1

    :cond_1
    move v5, p1

    :goto_1
    if-eqz v0, :cond_2

    move v6, p3

    goto :goto_2

    :cond_2
    iget v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderWidth:I

    add-int/2addr v6, p1

    :goto_2
    add-int/2addr v1, v3

    invoke-virtual {v4, v5, v3, v6, v1}, Landroid/widget/TextView;->layout(IIII)V

    :cond_3
    if-eqz v0, :cond_4

    .line 578
    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderWidth:I

    sub-int/2addr p3, v1

    goto :goto_3

    .line 580
    :cond_4
    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderWidth:I

    add-int/2addr p1, v1

    .line 584
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    add-int v3, p2, p1

    add-int/2addr p2, p3

    invoke-virtual {v1, v3, v2, p2, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 585
    iput v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLeftOffset:I

    .line 586
    iput p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mRightOffset:I

    .line 587
    iget-boolean p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mIsSectionHeaderEnabled:Z

    if-eqz p2, :cond_7

    if-eqz v0, :cond_6

    .line 589
    iget p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    sub-int/2addr p3, p2

    goto :goto_4

    .line 591
    :cond_6
    iget p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    add-int/2addr p1, p2

    .line 595
    :cond_7
    :goto_4
    iget-boolean p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 596
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 599
    :cond_8
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz p2, :cond_9

    goto :goto_5

    :cond_9
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    .line 600
    :goto_5
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v3, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-ne v1, v3, :cond_b

    if-eqz p2, :cond_a

    add-int/lit8 v1, p5, 0x0

    .line 604
    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    .line 605
    iget v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    add-int/2addr v4, p1

    add-int/2addr v3, v1

    invoke-virtual {p2, p1, v1, v4, v3}, Landroid/view/View;->layout(IIII)V

    .line 607
    iget p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    :goto_6
    add-int/2addr p2, v1

    :goto_7
    add-int/2addr p1, p2

    goto :goto_a

    .line 608
    :cond_a
    iget-boolean p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    if-eqz p2, :cond_e

    .line 610
    iget p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    goto :goto_6

    :cond_b
    if-eqz p2, :cond_c

    add-int/lit8 v1, p5, 0x0

    .line 616
    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    .line 617
    iget v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    sub-int v4, p3, v4

    add-int/2addr v3, v1

    invoke-virtual {p2, v4, v1, p3, v3}, Landroid/view/View;->layout(IIII)V

    .line 619
    iget p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    :goto_8
    add-int/2addr p2, v1

    sub-int/2addr p3, p2

    goto :goto_9

    .line 620
    :cond_c
    iget-boolean p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    if-eqz p2, :cond_d

    .line 622
    iget p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    goto :goto_8

    .line 626
    :cond_d
    :goto_9
    iget p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    goto :goto_7

    :cond_e
    :goto_a
    add-int/lit8 p2, p5, 0x0

    .line 631
    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionSize:I

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v2

    if-nez v0, :cond_f

    .line 635
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionView:Landroid/widget/ImageView;

    sub-int v4, p3, v1

    add-int/2addr v1, p2

    invoke-virtual {v3, v4, p2, p3, v1}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_b

    .line 642
    :cond_f
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionView:Landroid/widget/ImageView;

    add-int v4, p1, v1

    add-int/2addr v1, p2

    invoke-virtual {v3, p1, p2, v4, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 649
    :goto_b
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v1, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-ne p2, v1, :cond_10

    .line 650
    iget p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionSize:I

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionMargin:I

    add-int/2addr p2, v1

    sub-int/2addr p3, p2

    goto :goto_c

    .line 652
    :cond_10
    iget p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionSize:I

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionMargin:I

    add-int/2addr p2, v1

    add-int/2addr p1, p2

    .line 656
    :goto_c
    iget p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    add-int/2addr p2, v1

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int/2addr p2, v1

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I

    add-int/2addr p2, v1

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    add-int/2addr p2, v1

    add-int/2addr p5, v2

    sub-int/2addr p5, p2

    .line 662
    div-int/lit8 p5, p5, 0x2

    iget p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextOffsetTop:I

    add-int/2addr p5, p2

    .line 666
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 667
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    .line 668
    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxWidth:I

    if-lez v1, :cond_11

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    add-int/2addr v2, v1

    .line 669
    :cond_11
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v3, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-ne v1, v3, :cond_12

    .line 671
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    sub-int p2, p3, p2

    sub-int/2addr p2, v2

    sub-int v2, p3, v2

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    add-int/2addr v3, p5

    invoke-virtual {v1, p2, p5, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_d

    .line 678
    :cond_12
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    add-int v3, p1, v2

    add-int/2addr p2, p1

    add-int/2addr p2, v2

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    add-int/2addr v2, p5

    invoke-virtual {v1, v3, p5, p2, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 688
    :cond_13
    :goto_d
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 689
    iget p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxWidth:I

    .line 692
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v1, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-ne p2, v1, :cond_14

    .line 693
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 696
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingRight()I

    move-result v1

    sub-int/2addr p4, v1

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    add-int/2addr v1, p5

    .line 693
    invoke-virtual {p2, p1, p5, p4, v1}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_e

    .line 699
    :cond_14
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 701
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingRight()I

    move-result v1

    sub-int/2addr p4, v1

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    add-int/2addr v1, p5

    .line 699
    invoke-virtual {p2, p1, p5, p4, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 707
    :cond_15
    :goto_e
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_16

    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 708
    :cond_16
    iget p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    add-int/2addr p5, p2

    :cond_17
    if-eqz v0, :cond_19

    .line 714
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 715
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    .line 716
    iget-object p4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    sub-int v1, p3, p2

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    add-int/2addr v2, p5

    invoke-virtual {p4, v1, p5, p3, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 718
    iget p4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    add-int/2addr p2, p4

    sub-int p2, p3, p2

    goto :goto_f

    :cond_18
    move p2, p3

    .line 721
    :goto_f
    iget-object p4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, p4}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_1b

    .line 722
    iget-object p4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    add-int/2addr v1, p5

    invoke-virtual {p4, p1, p5, p2, v1}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_11

    .line 727
    :cond_19
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 728
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    .line 729
    iget-object p4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    add-int v1, p1, p2

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    add-int/2addr v2, p5

    invoke-virtual {p4, p1, p5, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 731
    iget p4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    add-int/2addr p2, p4

    add-int/2addr p2, p1

    goto :goto_10

    :cond_1a
    move p2, p1

    .line 734
    :goto_10
    iget-object p4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, p4}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_1b

    .line 735
    iget-object p4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    add-int/2addr v1, p5

    invoke-virtual {p4, p2, p5, p3, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 740
    :cond_1b
    :goto_11
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_1c

    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 741
    :cond_1c
    iget p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    add-int/2addr p5, p2

    .line 748
    :cond_1d
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1f

    if-nez v0, :cond_1e

    .line 750
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    iget p4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int v1, p5, p4

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I

    sub-int/2addr v1, v2

    add-int/2addr p4, p5

    invoke-virtual {p2, p1, v1, p3, p4}, Landroid/widget/TextView;->layout(IIII)V

    .line 755
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    iget p4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    add-int/2addr p2, p4

    add-int/2addr p2, p1

    goto :goto_12

    .line 757
    :cond_1e
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p1

    .line 758
    iget-object p4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    .line 759
    invoke-virtual {p4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    sub-int v1, p3, v1

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int v3, p5, v2

    iget v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I

    sub-int/2addr v3, v4

    add-int/2addr v2, p5

    .line 758
    invoke-virtual {p4, v1, v3, p3, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 763
    iget-object p4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p4

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    add-int/2addr p4, v1

    sub-int/2addr p3, p4

    goto :goto_12

    :cond_1f
    move p2, p1

    .line 767
    :goto_12
    iget-object p4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, p4}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_21

    .line 769
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v1, 0x7f0700e6

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    if-nez v0, :cond_20

    .line 771
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    add-int/2addr p2, p4

    iget p4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int v1, p5, p4

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewHeight:I

    sub-int/2addr v1, v2

    add-int/lit8 v2, p3, 0x32

    add-int/2addr p4, p5

    invoke-virtual {v0, p2, v1, v2, p4}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_13

    .line 778
    :cond_20
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    .line 779
    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p3, v0

    add-int/2addr v0, p4

    iget p4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int v1, p5, p4

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewHeight:I

    sub-int/2addr v1, v2

    add-int/lit8 v2, p3, 0x32

    add-int/2addr p4, p5

    .line 778
    invoke-virtual {p2, v0, v1, v2, p4}, Landroid/widget/TextView;->layout(IIII)V

    .line 787
    :cond_21
    :goto_13
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_22

    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_23

    .line 788
    :cond_22
    iget p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int/2addr p5, p2

    .line 791
    :cond_23
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 792
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    iget p4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I

    add-int/2addr p4, p5

    invoke-virtual {p2, p1, p5, p3, p4}, Landroid/widget/TextView;->layout(IIII)V

    :cond_24
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    const/4 p2, 0x0

    .line 396
    invoke-static {p2, p1}, Lcom/android/contacts/common/list/ContactListItemView;->resolveSize(II)I

    move-result p1

    .line 397
    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I

    .line 399
    iput p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    .line 400
    iput p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    .line 401
    iput p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I

    .line 402
    iput p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewHeight:I

    .line 403
    iput p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    .line 404
    iput p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I

    .line 405
    iput p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    .line 406
    iput p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCheckBoxWidth:I

    .line 408
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->ensurePhotoViewSize()V

    .line 413
    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    if-gtz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingRight()I

    move-result v2

    goto :goto_1

    .line 416
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    .line 417
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    add-int/2addr v2, v3

    :goto_1
    sub-int/2addr v1, v2

    .line 423
    iget-boolean v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mIsSectionHeaderEnabled:Z

    if-eqz v2, :cond_2

    .line 424
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderWidth:I

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 427
    :cond_2
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionSize:I

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionMargin:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 432
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_4

    .line 435
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v4, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-eq v2, v4, :cond_3

    .line 436
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    sub-int v2, v1, v2

    goto :goto_2

    :cond_3
    move v2, v1

    .line 438
    :goto_2
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 439
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 440
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 438
    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->measure(II)V

    .line 441
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    .line 448
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 449
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 450
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    sub-int v2, v1, v2

    .line 451
    iget v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    mul-int v5, v2, v4

    iget v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    add-int v7, v4, v6

    div-int/2addr v5, v7

    mul-int/2addr v2, v6

    add-int/2addr v4, v6

    .line 453
    div-int/2addr v2, v4

    goto :goto_3

    :cond_5
    move v2, p2

    move v5, v1

    goto :goto_3

    .line 461
    :cond_6
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v5, p2

    move v2, v1

    goto :goto_3

    :cond_7
    move v2, p2

    move v5, v2

    .line 468
    :goto_3
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 469
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    .line 470
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 471
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 469
    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->measure(II)V

    .line 472
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    iput v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewHeight:I

    .line 475
    :cond_8
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 476
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/high16 v5, -0x80000000

    .line 477
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 478
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 476
    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->measure(II)V

    .line 479
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I

    .line 481
    :cond_9
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I

    iget v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewHeight:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    .line 483
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 484
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    .line 485
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 486
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 484
    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->measure(II)V

    .line 487
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I

    .line 491
    :cond_a
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 492
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    .line 493
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    .line 494
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 492
    invoke-virtual {v2, v4, v5}, Landroid/widget/ImageView;->measure(II)V

    .line 495
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    .line 498
    :cond_b
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionView:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionSize:I

    .line 499
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionSize:I

    .line 500
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 498
    invoke-virtual {v2, v4, v5}, Landroid/widget/ImageView;->measure(II)V

    .line 502
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 503
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    .line 504
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 505
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 503
    invoke-virtual {v2, v4, v5}, Landroid/widget/ImageView;->measure(II)V

    .line 506
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    .line 509
    :cond_c
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 512
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 513
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    sub-int/2addr v1, v2

    .line 517
    :cond_d
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    .line 518
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 519
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 517
    invoke-virtual {v2, v1, v4}, Landroid/widget/TextView;->measure(II)V

    .line 520
    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    .line 524
    :cond_e
    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    add-int/2addr v1, v2

    .line 532
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingTop()I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0xa

    .line 535
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 538
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_f

    .line 539
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderWidth:I

    .line 540
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 541
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 539
    invoke-virtual {v1, v2, p2}, Landroid/widget/TextView;->measure(II)V

    :cond_f
    add-int/lit8 v0, v0, 0xa

    .line 544
    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1540
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1541
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1545
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    float-to-int v3, v0

    float-to-int v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->pointIsInView(FF)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 1546
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public removePhotoView()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 931
    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->removePhotoView(ZZ)V

    return-void
.end method

.method public removePhotoView(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 943
    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 944
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    .line 945
    iput-boolean p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepVerticalPaddingForPhotoView:Z

    .line 946
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 947
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 948
    iput-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    .line 950
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz p1, :cond_1

    .line 951
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 952
    iput-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 1522
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->forceLayout()V

    return-void
.end method

.method public setActivatedStateSupported(Z)V
    .locals 0

    .line 1510
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z

    return-void
.end method

.method public setAdjustSelectionBoundsEnabled(Z)V
    .locals 0

    .line 1514
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAdjustSelectionBoundsEnabled:Z

    return-void
.end method

.method public setCallToAction(ILcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;I)V
    .locals 4

    .line 336
    iput p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToAction:I

    .line 337
    iput p3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPosition:I

    const v0, 0x7f1101b5

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f080121

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 344
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    const v0, 0x7f1101b4

    .line 346
    new-instance v1, Lcom/android/contacts/common/list/-$$Lambda$ContactListItemView$xdkruagLGqDsZ1LIi5S-ec1zWds;

    invoke-direct {v1, p2, p3}, Lcom/android/contacts/common/list/-$$Lambda$ContactListItemView$xdkruagLGqDsZ1LIi5S-ec1zWds;-><init>(Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;I)V

    goto :goto_0

    :cond_0
    const v2, 0x7f0801f5

    if-ne p1, v1, :cond_1

    .line 347
    iget-boolean v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSupportVideoCall:Z

    if-eqz v3, :cond_1

    .line 349
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 350
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 352
    new-instance v1, Lcom/android/contacts/common/list/-$$Lambda$ContactListItemView$iF6zM7jC-_fG19AoMe_IKaEY0eI;

    invoke-direct {v1, p2, p3}, Lcom/android/contacts/common/list/-$$Lambda$ContactListItemView$iF6zM7jC-_fG19AoMe_IKaEY0eI;-><init>(Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 354
    invoke-static {}, Lcom/android/dialer/callintent/CallIntentBuilder;->increaseLightbringerCallButtonAppearInSearchCount()V

    .line 356
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 357
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 359
    new-instance v1, Lcom/android/contacts/common/list/-$$Lambda$ContactListItemView$iR2lyJucXGpVRRwABZmPGt9jV7Y;

    invoke-direct {v1, p2, p3}, Lcom/android/contacts/common/list/-$$Lambda$ContactListItemView$iR2lyJucXGpVRRwABZmPGt9jV7Y;-><init>(Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;I)V

    .line 366
    :goto_0
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 367
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionView:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 369
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionView:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 361
    :cond_2
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionView:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCallToActionView:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setDisplayName(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1249
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1251
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHighlightedPrefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1252
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    invoke-virtual {v1, p1, v0}, Lcom/android/contacts/common/format/TextHighlighter;->applyPrefixHighlight(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    .line 1253
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1254
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1255
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;

    .line 1256
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    .line 1257
    invoke-static {v1}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->access$000(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I

    move-result v3

    invoke-static {v1}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->access$100(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I

    move-result v1

    .line 1256
    invoke-virtual {v2, v0, v3, v1}, Lcom/android/contacts/common/format/TextHighlighter;->applyMaskingHighlight(Landroid/text/SpannableString;II)V

    goto :goto_0

    :cond_1
    move-object p1, v0

    goto :goto_1

    .line 1262
    :cond_2
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 1264
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1268
    invoke-static {p1}, Lcom/android/contacts/common/util/ContactDisplayUtils;->isPossiblePhoneNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1270
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 1271
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 1272
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1271
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1276
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1531
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1532
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1533
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060170

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 1534
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1535
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setHighlightedPrefix(Ljava/lang/String;)V
    .locals 0

    .line 963
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHighlightedPrefix:Ljava/lang/String;

    return-void
.end method

.method public setIsSectionHeaderEnabled(Z)V
    .locals 0

    .line 892
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mIsSectionHeaderEnabled:Z

    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1019
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 1021
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1024
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getLabelView()Landroid/widget/TextView;

    .line 1025
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1026
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 4

    .line 1064
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneNumber:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 1066
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 1067
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1070
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDataView()Landroid/widget/TextView;

    .line 1078
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1080
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1081
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;

    .line 1083
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    .line 1084
    invoke-static {p1}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->access$000(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I

    move-result v3

    invoke-static {p1}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->access$100(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I

    move-result p1

    .line 1083
    invoke-virtual {v2, v0, v3, p1}, Lcom/android/contacts/common/format/TextHighlighter;->applyMaskingHighlight(Landroid/text/SpannableString;II)V

    .line 1088
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1089
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1092
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 1093
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setPresence(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1200
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1201
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    .line 1202
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1204
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1205
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1206
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1208
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 1209
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0

    .line 324
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContactEnabled:Z

    return-void
.end method

.method public setSectionHeader(Ljava/lang/String;)V
    .locals 2

    .line 876
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 877
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 878
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f120170

    .line 879
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 880
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 881
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 884
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 885
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_0

    .line 886
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 887
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 3

    .line 1139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 1141
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getSnippetView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHighlightedPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/contacts/common/format/TextHighlighter;->setPrefixText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1146
    invoke-static {p1}, Lcom/android/contacts/common/util/ContactDisplayUtils;->isPossiblePhoneNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1148
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1150
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1187
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 1188
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1191
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getStatusView()Landroid/widget/TextView;

    .line 1192
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1193
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSupportVideoCallIcon(Z)V
    .locals 0

    .line 389
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSupportVideoCall:Z

    return-void
.end method

.method public setUnknownNameText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mUnknownNameText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setWorkProfileIconEnabled(Z)V
    .locals 2

    .line 1220
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 1221
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 1223
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    .line 1224
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1225
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    const v0, 0x7f08014c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1226
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1227
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mWorkProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public showDisplayName(Landroid/database/Cursor;I)V
    .locals 4

    .line 1236
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1237
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 1242
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz p1, :cond_0

    .line 1244
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1101ae

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1243
    invoke-virtual {p1, p2}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showPresenceAndStatusMessage(Landroid/database/Cursor;II)V
    .locals 2

    .line 1326
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1327
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 1328
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/contacts/common/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    move-object v0, v1

    .line 1330
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setPresence(Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_1

    .line 1333
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1334
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    .line 1339
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/contacts/common/ContactStatusUtil;->getStatusString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 1341
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showSnippet(Landroid/database/Cursor;I)V
    .locals 6

    .line 1346
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    const/4 v1, 0x0

    if-le v0, p2, :cond_9

    .line 1347
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "snippet"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1352
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1355
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "deferred_snippeting"

    .line 1356
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "deferred_snippeting_query"

    .line 1358
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "display_name"

    .line 1361
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 1363
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1366
    :cond_1
    invoke-direct {p0, p2, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->updateSnippet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_8

    const/4 p1, 0x0

    .line 1371
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x5b

    .line 1372
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0xa

    .line 1376
    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    if-eq v3, v4, :cond_4

    add-int/lit8 p1, v3, 0x1

    :cond_4
    const/16 v3, 0x5d

    .line 1380
    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-eq v5, v4, :cond_5

    .line 1382
    invoke-virtual {p2, v1, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v4, :cond_5

    move v0, v1

    .line 1388
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge p1, v0, :cond_7

    .line 1390
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_6

    if-eq v4, v3, :cond_6

    .line 1392
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1395
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_8
    move-object v1, p2

    .line 1400
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    return-void

    .line 1348
    :cond_9
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    return-void
.end method

.method public updataDisplayNameColor(Ljava/lang/CharSequence;Ljava/lang/Boolean;)V
    .locals 4

    .line 1282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1284
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHighlightedPrefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1285
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    invoke-virtual {p2, p1, v0}, Lcom/android/contacts/common/format/TextHighlighter;->applyPrefixHighlight(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    .line 1286
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1287
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1288
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;

    .line 1289
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    .line 1290
    invoke-static {v1}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->access$000(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I

    move-result v3

    invoke-static {v1}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->access$100(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I

    move-result v1

    .line 1289
    invoke-virtual {v2, v0, v3, v1, p2}, Lcom/android/contacts/common/format/TextHighlighter;->updataMaskingHighlight(Landroid/text/SpannableString;IILjava/lang/Boolean;)V

    goto :goto_0

    :cond_1
    move-object p1, v0

    goto :goto_1

    .line 1295
    :cond_2
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 1297
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updataDisplayNumberColor(Ljava/lang/CharSequence;Ljava/lang/Boolean;)V
    .locals 3

    .line 1301
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1303
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 1304
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNumberHighlightSequence:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;

    .line 1305
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextHighlighter:Lcom/android/contacts/common/format/TextHighlighter;

    .line 1306
    invoke-static {p1}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->access$000(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I

    move-result v2

    invoke-static {p1}, Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;->access$100(Lcom/android/contacts/common/list/ContactListItemView$HighlightSequence;)I

    move-result p1

    .line 1305
    invoke-virtual {v1, v0, v2, p1, p2}, Lcom/android/contacts/common/format/TextHighlighter;->updataMaskingHighlight(Landroid/text/SpannableString;IILjava/lang/Boolean;)V

    .line 1309
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 854
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
