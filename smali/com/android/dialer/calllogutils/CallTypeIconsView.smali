.class public Lcom/android/dialer/calllogutils/CallTypeIconsView;
.super Landroid/view/View;
.source "CallTypeIconsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CallTypeIconsView"

.field private static sLargeResouces:Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;

.field private static sResources:Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;


# instance fields
.field private mCallTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mShowHd:Z

.field private mShowVideo:Z

.field private mShowWifi:Z

.field private mWidth:I

.field private final useLargeIcons:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/android/dialer/calllogutils/CallTypeIconsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/R$styleable;->CallTypeIconsView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 68
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->useLargeIcons:Z

    .line 69
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    sget-object p2, Lcom/android/dialer/calllogutils/CallTypeIconsView;->sResources:Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;

    if-nez p2, :cond_0

    .line 71
    new-instance p2, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;

    invoke-direct {p2, p1, v2}, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;-><init>(Landroid/content/Context;Z)V

    sput-object p2, Lcom/android/dialer/calllogutils/CallTypeIconsView;->sResources:Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;

    .line 73
    :cond_0
    sget-object p2, Lcom/android/dialer/calllogutils/CallTypeIconsView;->sLargeResouces:Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->useLargeIcons:Z

    if-eqz p2, :cond_1

    .line 74
    new-instance p2, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;-><init>(Landroid/content/Context;Z)V

    sput-object p2, Lcom/android/dialer/calllogutils/CallTypeIconsView;->sLargeResouces:Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;

    :cond_1
    return-void
.end method

.method private addDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)I
    .locals 3

    .line 216
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v0, p3

    .line 217
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, p3, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 218
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return v0
.end method


# virtual methods
.method public add(I)V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/dialer/calllogutils/CallTypeIconsView;->getCallTypeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 89
    iget v0, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mWidth:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sget-object v2, Lcom/android/dialer/calllogutils/CallTypeIconsView;->sResources:Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;

    iget v2, v2, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->iconMargin:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mWidth:I

    .line 90
    iget v0, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mHeight:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mHeight:I

    .line 91
    invoke-virtual {p0}, Lcom/android/dialer/calllogutils/CallTypeIconsView;->invalidate()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mWidth:I

    .line 81
    iput v0, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mHeight:I

    .line 82
    invoke-virtual {p0}, Lcom/android/dialer/calllogutils/CallTypeIconsView;->invalidate()V

    return-void
.end method

.method public getCallType(I)I
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getCallTypeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "CallTypeIconsView"

    const-string v1, "getCallTypeDrawable: ---"

    .line 144
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-boolean v1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->useLargeIcons:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/dialer/calllogutils/CallTypeIconsView;->sLargeResouces:Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/dialer/calllogutils/CallTypeIconsView;->sResources:Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;

    :goto_0
    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 173
    iget-object p1, v1, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->missed:Landroid/graphics/drawable/Drawable;

    return-object p1

    :pswitch_0
    const-string p1, "getCallTypeDrawable: block_type"

    .line 162
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p1, v1, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->blocked:Landroid/graphics/drawable/Drawable;

    return-object p1

    :pswitch_1
    const-string p1, "getCallTypeDrawable: AppCompatConstants.CALLS_REJECTED_TYPE"

    .line 165
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object p1, v1, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->rejected:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 160
    :pswitch_2
    iget-object p1, v1, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->voicemail:Landroid/graphics/drawable/Drawable;

    return-object p1

    :pswitch_3
    const-string p1, "getCallTypeDrawable: MISSED_TYPE"

    .line 157
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object p1, v1, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->missed:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 153
    :pswitch_4
    iget-object p1, v1, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->outgoing:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 150
    :pswitch_5
    iget-object p1, v1, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->incoming:Landroid/graphics/drawable/Drawable;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e8
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isVideoShown()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mShowVideo:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 187
    iget-boolean v0, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->useLargeIcons:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->sLargeResouces:Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->sResources:Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;

    .line 191
    :goto_0
    iget-boolean v1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->useLargeIcons:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mShowHd:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mShowVideo:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mShowWifi:Z

    if-nez v1, :cond_3

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 193
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/dialer/calllogutils/CallTypeIconsView;->getCallTypeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 194
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v3

    .line 195
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v4, v3, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 196
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 197
    iget v3, v0, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->iconMargin:I

    add-int/2addr v3, v5

    goto :goto_1

    :cond_2
    move v2, v3

    .line 202
    :cond_3
    iget-boolean v1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mShowVideo:Z

    if-eqz v1, :cond_4

    .line 203
    iget-object v1, v0, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->videoCall:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/dialer/calllogutils/CallTypeIconsView;->addDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)I

    move-result v1

    iget v2, v0, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->iconMargin:I

    add-int/2addr v2, v1

    .line 206
    :cond_4
    iget-boolean v1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mShowHd:Z

    if-eqz v1, :cond_5

    .line 207
    iget-object v1, v0, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->hdCall:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/dialer/calllogutils/CallTypeIconsView;->addDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)I

    move-result v1

    iget v2, v0, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->iconMargin:I

    add-int/2addr v2, v1

    .line 210
    :cond_5
    iget-boolean v1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mShowWifi:Z

    if-eqz v1, :cond_6

    .line 211
    iget-object v1, v0, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->wifiCall:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/dialer/calllogutils/CallTypeIconsView;->addDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)I

    iget p1, v0, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->iconMargin:I

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 179
    iget p1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mWidth:I

    iget p2, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/calllogutils/CallTypeIconsView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setShowHd(Z)V
    .locals 2

    .line 118
    iput-boolean p1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mShowHd:Z

    if-eqz p1, :cond_0

    .line 120
    iget p1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mWidth:I

    sget-object v0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->sResources:Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->hdCall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sget-object v1, Lcom/android/dialer/calllogutils/CallTypeIconsView;->sResources:Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;

    iget v1, v1, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->iconMargin:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mWidth:I

    .line 121
    iget p1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mHeight:I

    sget-object v0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->sResources:Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->hdCall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mHeight:I

    .line 122
    invoke-virtual {p0}, Lcom/android/dialer/calllogutils/CallTypeIconsView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setShowVideo(Z)V
    .locals 2

    .line 100
    iput-boolean p1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mShowVideo:Z

    if-eqz p1, :cond_0

    .line 102
    iget p1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mWidth:I

    sget-object v0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->sResources:Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->videoCall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sget-object v1, Lcom/android/dialer/calllogutils/CallTypeIconsView;->sResources:Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;

    iget v1, v1, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->iconMargin:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mWidth:I

    .line 103
    iget p1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mHeight:I

    sget-object v0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->sResources:Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->videoCall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mHeight:I

    .line 104
    invoke-virtual {p0}, Lcom/android/dialer/calllogutils/CallTypeIconsView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setShowWifi(Z)V
    .locals 2

    .line 127
    iput-boolean p1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mShowWifi:Z

    if-eqz p1, :cond_0

    .line 129
    iget p1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mWidth:I

    sget-object v0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->sResources:Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->wifiCall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sget-object v1, Lcom/android/dialer/calllogutils/CallTypeIconsView;->sResources:Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;

    iget v1, v1, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->iconMargin:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mWidth:I

    .line 130
    iget p1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mHeight:I

    sget-object v0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->sResources:Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->wifiCall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView;->mHeight:I

    .line 131
    invoke-virtual {p0}, Lcom/android/dialer/calllogutils/CallTypeIconsView;->invalidate()V

    :cond_0
    return-void
.end method
