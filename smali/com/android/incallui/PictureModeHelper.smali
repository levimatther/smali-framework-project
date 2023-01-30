.class public Lcom/android/incallui/PictureModeHelper;
.super Ljava/lang/Object;
.source "PictureModeHelper.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/call/CallList$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/PictureModeHelper$Listener;
    }
.end annotation


# static fields
.field private static final LOCAL_PREVIEW_SURFACE_SIZE_SETTING:Ljava/lang/String; = "local_preview_surface_size"

.field private static mShowIncomingVideoView:Z = true

.field private static mShowPreviewVideoView:Z = true


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/incallui/PictureModeHelper$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/PictureModeHelper;->mListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 75
    sput-boolean p0, Lcom/android/incallui/PictureModeHelper;->mShowPreviewVideoView:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 75
    sput-boolean p0, Lcom/android/incallui/PictureModeHelper;->mShowIncomingVideoView:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/incallui/PictureModeHelper;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/incallui/PictureModeHelper;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private addOnGlobalLayoutListener(Landroid/view/TextureView;Landroid/widget/ImageView;)V
    .locals 2

    .line 422
    invoke-virtual {p1}, Landroid/view/TextureView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 423
    new-instance v1, Lcom/android/incallui/PictureModeHelper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/incallui/PictureModeHelper$4;-><init>(Lcom/android/incallui/PictureModeHelper;Landroid/view/TextureView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private blur(Landroid/content/Context;Landroid/graphics/Bitmap;F)V
    .locals 2

    .line 618
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    .line 620
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    .line 621
    invoke-static {p1, p2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 622
    invoke-static {p1, p2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p1

    .line 623
    invoke-virtual {v0, p3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 624
    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 625
    invoke-virtual {v0, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 626
    invoke-virtual {p1, p2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 627
    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 628
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 629
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->destroy()V

    return-void
.end method

.method private enable(Landroid/widget/CheckBox;Z)V
    .locals 0

    .line 254
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 255
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setClickable(Z)V

    return-void
.end method

.method private getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 7

    .line 469
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 474
    :cond_0
    sget-boolean v1, Lcom/android/incallui/PictureModeHelper;->mShowPreviewVideoView:Z

    const/16 v2, 0xc

    const/16 v3, 0x14

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/incallui/PictureModeHelper;->mShowIncomingVideoView:Z

    if-eqz v1, :cond_2

    .line 475
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 476
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const v5, 0x7f070285

    .line 477
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f070280

    .line 478
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v5, 0x7f070282

    .line 480
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    .line 479
    invoke-virtual {v4, v6, v6, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 481
    invoke-direct {p0, v0}, Lcom/android/incallui/PictureModeHelper;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x15

    .line 482
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v0, 0x7f070283

    .line 483
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 486
    :cond_1
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v0, 0x7f070284

    .line 487
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 490
    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v4

    .line 493
    :cond_2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 496
    invoke-direct {p0, v0}, Lcom/android/incallui/PictureModeHelper;->hasValidPreviewSurfaceSize(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 497
    invoke-virtual {p0, v0}, Lcom/android/incallui/PictureModeHelper;->getPreviewSizeFromSetting(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 499
    invoke-direct {p0, v0}, Lcom/android/incallui/PictureModeHelper;->isLandscape(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_3
    iget v4, v3, Landroid/graphics/Point;->x:I

    :goto_1
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 500
    invoke-direct {p0, v0}, Lcom/android/incallui/PictureModeHelper;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, v3, Landroid/graphics/Point;->x:I

    goto :goto_2

    :cond_4
    iget v0, v3, Landroid/graphics/Point;->y:I

    :goto_2
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 501
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3

    .line 504
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/incallui/PictureModeHelper;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xb

    .line 505
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3

    .line 507
    :cond_6
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xa

    .line 508
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_7
    :goto_3
    return-object v1
.end method

.method private hasValidPreviewSurfaceSize(Landroid/content/Context;)Z
    .locals 1

    .line 459
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "local_preview_surface_size"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 461
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isLandscape(Landroid/content/Context;)Z
    .locals 2

    .line 536
    check-cast p1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {p1}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 537
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private setDismissListener()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/android/incallui/PictureModeHelper;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/incallui/PictureModeHelper$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/PictureModeHelper$3;-><init>(Lcom/android/incallui/PictureModeHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/PictureModeHelper$Listener;)V
    .locals 1

    .line 151
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/android/incallui/PictureModeHelper;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canShowIncomingVideoView()Z
    .locals 1

    .line 269
    sget-boolean v0, Lcom/android/incallui/PictureModeHelper;->mShowIncomingVideoView:Z

    return v0
.end method

.method public canShowPreviewVideoView()Z
    .locals 1

    .line 262
    sget-boolean v0, Lcom/android/incallui/PictureModeHelper;->mShowPreviewVideoView:Z

    return v0
.end method

.method public create()V
    .locals 6

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 183
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c00ef

    const/4 v4, 0x0

    .line 184
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 186
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1104e9

    .line 187
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 188
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x1

    .line 189
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f09024f

    .line 191
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v4, 0x7f0901b3

    .line 192
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const v4, 0x7f1104ea

    .line 198
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, -0x1000000

    .line 199
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setTextColor(I)V

    const v5, 0x7f1104e8

    .line 200
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 204
    sget-boolean v4, Lcom/android/incallui/PictureModeHelper;->mShowPreviewVideoView:Z

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 205
    sget-boolean v4, Lcom/android/incallui/PictureModeHelper;->mShowIncomingVideoView:Z

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 210
    sget-boolean v4, Lcom/android/incallui/PictureModeHelper;->mShowIncomingVideoView:Z

    invoke-direct {p0, v0, v4}, Lcom/android/incallui/PictureModeHelper;->enable(Landroid/widget/CheckBox;Z)V

    .line 211
    sget-boolean v4, Lcom/android/incallui/PictureModeHelper;->mShowPreviewVideoView:Z

    invoke-direct {p0, v2, v4}, Lcom/android/incallui/PictureModeHelper;->enable(Landroid/widget/CheckBox;Z)V

    .line 213
    new-instance v4, Lcom/android/incallui/-$$Lambda$PictureModeHelper$n2mU0jzKqBH5yLpuId4St30KoMg;

    invoke-direct {v4, p0, v2}, Lcom/android/incallui/-$$Lambda$PictureModeHelper$n2mU0jzKqBH5yLpuId4St30KoMg;-><init>(Lcom/android/incallui/PictureModeHelper;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    new-instance v4, Lcom/android/incallui/-$$Lambda$PictureModeHelper$0SM7PJRMs7odwp3S4oIPN0wdXRo;

    invoke-direct {v4, p0, v0}, Lcom/android/incallui/-$$Lambda$PictureModeHelper$0SM7PJRMs7odwp3S4oIPN0wdXRo;-><init>(Lcom/android/incallui/PictureModeHelper;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f1104eb

    .line 217
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/incallui/PictureModeHelper$1;

    invoke-direct {v5, p0, v0, v2}, Lcom/android/incallui/PictureModeHelper$1;-><init>(Lcom/android/incallui/PictureModeHelper;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f1104e7

    .line 227
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/PictureModeHelper$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/PictureModeHelper$2;-><init>(Lcom/android/incallui/PictureModeHelper;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 234
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/PictureModeHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 235
    invoke-direct {p0}, Lcom/android/incallui/PictureModeHelper;->setDismissListener()V

    :cond_2
    :goto_0
    return-void
.end method

.method public createAndShowDialog()V
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/android/incallui/PictureModeHelper;->create()V

    .line 129
    iget-object v0, p0, Lcom/android/incallui/PictureModeHelper;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public getPreviewSizeFromSetting(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 4

    .line 516
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "local_preview_surface_size"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "x"

    .line 524
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 525
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    .line 526
    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 527
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v2, p1}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in parsing local_preview_surface_size - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PictureModeHelper.setFixedPreviewSurfaceSize"

    invoke-static {v2, p1, v1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public isPipMode()Z
    .locals 1

    .line 276
    invoke-virtual {p0}, Lcom/android/incallui/PictureModeHelper;->canShowPreviewVideoView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/PictureModeHelper;->canShowIncomingVideoView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$create$0$PictureModeHelper(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    .line 213
    check-cast p2, Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/PictureModeHelper;->enable(Landroid/widget/CheckBox;Z)V

    return-void
.end method

.method public synthetic lambda$create$1$PictureModeHelper(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    .line 215
    check-cast p2, Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/PictureModeHelper;->enable(Landroid/widget/CheckBox;Z)V

    return-void
.end method

.method public maybeHideVideoViews()V
    .locals 6

    .line 358
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 362
    sget-boolean v2, Lcom/android/incallui/PictureModeHelper;->mShowPreviewVideoView:Z

    .line 364
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    sget-boolean v4, Lcom/android/incallui/PictureModeHelper;->mShowIncomingVideoView:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "PictureModeHelper.maybeHideVideoViews"

    const-string v4, "canShowPreviewVideoView = %b canShowIncomingVideoView = %b"

    .line 362
    invoke-static {v2, v4, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const v1, 0x7f090342

    .line 366
    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    const v4, 0x7f090337

    .line 368
    invoke-virtual {v0, v4}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    if-nez v4, :cond_1

    goto :goto_4

    .line 375
    :cond_1
    sget-boolean v2, Lcom/android/incallui/PictureModeHelper;->mShowPreviewVideoView:Z

    const/16 v5, 0x8

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 376
    sget-boolean v1, Lcom/android/incallui/PictureModeHelper;->mShowPreviewVideoView:Z

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v5

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f090346

    .line 380
    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    .line 381
    sget-boolean v2, Lcom/android/incallui/PictureModeHelper;->mShowIncomingVideoView:Z

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v5

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setVisibility(I)V

    const v1, 0x7f090339

    .line 384
    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 386
    sget-boolean v1, Lcom/android/incallui/PictureModeHelper;->mShowIncomingVideoView:Z

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move v3, v5

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_6
    :goto_4
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "previewTextureView/previewOffBlurredImageView is null"

    .line 371
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public notifyOnSelectionChanged()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/android/incallui/PictureModeHelper;->mListeners:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lcom/android/incallui/PictureModeHelper;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/PictureModeHelper$Listener;

    .line 285
    invoke-interface {v1}, Lcom/android/incallui/PictureModeHelper$Listener;->onPreviewVideoSelectionChanged()V

    .line 286
    invoke-interface {v1}, Lcom/android/incallui/PictureModeHelper$Listener;->onIncomingVideoSelectionChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCallListChange(Lcom/android/incallui/call/CallList;)V
    .locals 0

    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/call/DialerCall;Landroid/telecom/Call$Details;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 301
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/incallui/PictureModeHelper;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_1

    .line 302
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    .line 547
    iget-object p1, p0, Lcom/android/incallui/PictureModeHelper;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    .line 548
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onHandoverToWifiFailed(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    .line 332
    iget-object p1, p0, Lcom/android/incallui/PictureModeHelper;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    .line 333
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onInternationalCallOnWifi(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public onSessionModificationStateChange(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/CallList;)V
    .locals 1

    .line 316
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStateChange oldState"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " newState="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    sget-object p1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 321
    sput-boolean p1, Lcom/android/incallui/PictureModeHelper;->mShowPreviewVideoView:Z

    .line 322
    sput-boolean p1, Lcom/android/incallui/PictureModeHelper;->mShowIncomingVideoView:Z

    :cond_0
    return-void
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    .line 352
    iget-object p1, p0, Lcom/android/incallui/PictureModeHelper;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    .line 353
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onWiFiToLteHandover(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public removeListener(Lcom/android/incallui/PictureModeHelper$Listener;)V
    .locals 1

    .line 161
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/android/incallui/PictureModeHelper;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPreviewVideoLayoutParams()V
    .locals 5

    .line 390
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    const-string v1, "PictureModeHelper.setPreviewVideoLayoutParams"

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 391
    sget-boolean v3, Lcom/android/incallui/PictureModeHelper;->mShowPreviewVideoView:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/incallui/PictureModeHelper;->mShowIncomingVideoView:Z

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    const v3, 0x7f090342

    .line 397
    invoke-virtual {v0, v3}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/TextureView;

    const v4, 0x7f090337

    .line 399
    invoke-virtual {v0, v4}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    if-nez v0, :cond_1

    goto :goto_1

    .line 406
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/PictureModeHelper;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 407
    invoke-virtual {v3, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    sget-boolean v1, Lcom/android/incallui/PictureModeHelper;->mShowPreviewVideoView:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/incallui/PictureModeHelper;->mShowIncomingVideoView:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/incallui/video/impl/VideoCallFragment;->circleOutlineProvider:Landroid/view/ViewOutlineProvider;

    goto :goto_0

    :cond_2
    move-object v1, v4

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/TextureView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 412
    sget-boolean v1, Lcom/android/incallui/PictureModeHelper;->mShowPreviewVideoView:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/incallui/PictureModeHelper;->mShowIncomingVideoView:Z

    if-eqz v1, :cond_3

    sget-object v4, Lcom/android/incallui/video/impl/VideoCallFragment;->circleOutlineProvider:Landroid/view/ViewOutlineProvider;

    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 415
    sget-boolean v1, Lcom/android/incallui/PictureModeHelper;->mShowPreviewVideoView:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/incallui/PictureModeHelper;->mShowIncomingVideoView:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 417
    invoke-direct {p0, v3, v0}, Lcom/android/incallui/PictureModeHelper;->addOnGlobalLayoutListener(Landroid/view/TextureView;Landroid/widget/ImageView;)V

    return-void

    :cond_5
    :goto_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "previewTextureView/previewOffBlurredImageView is null"

    .line 402
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    :goto_2
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Incallactivity is null or We are not in preview only mode"

    .line 392
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setUp(Lcom/android/incallui/VideoCallPresenter;)V
    .locals 1

    .line 103
    iput-object p1, p0, Lcom/android/incallui/PictureModeHelper;->mVideoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    .line 104
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 109
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 110
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/call/CallList;->addListener(Lcom/android/incallui/call/CallList$Listener;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/incallui/PictureModeHelper;->addListener(Lcom/android/incallui/PictureModeHelper$Listener;)V

    return-void
.end method

.method public shouldShowPreviewOnly()Z
    .locals 1

    .line 465
    sget-boolean v0, Lcom/android/incallui/PictureModeHelper;->mShowPreviewVideoView:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/incallui/PictureModeHelper;->mShowIncomingVideoView:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tearDown(Lcom/android/incallui/VideoCallPresenter;)V
    .locals 2

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/android/incallui/PictureModeHelper;->mVideoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    .line 116
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 117
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 118
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/call/CallList;->removeListener(Lcom/android/incallui/call/CallList$Listener;)V

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/incallui/PictureModeHelper;->removeListener(Lcom/android/incallui/PictureModeHelper$Listener;)V

    .line 120
    iput-object v0, p0, Lcom/android/incallui/PictureModeHelper;->mAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public updateBlurredImageView(Landroid/view/TextureView;Landroid/widget/ImageView;ZFF)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 571
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez p3, :cond_2

    .line 573
    invoke-virtual/range {p1 .. p1}, Landroid/view/TextureView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, p5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 574
    invoke-virtual/range {p1 .. p1}, Landroid/view/TextureView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, p5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 576
    invoke-virtual {v0, v7, v8}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 581
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v10

    if-nez v10, :cond_0

    return-void

    :cond_0
    move-object/from16 v15, p0

    move/from16 v11, p4

    .line 585
    invoke-direct {v15, v10, v9, v11}, Lcom/android/incallui/PictureModeHelper;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;F)V

    if-le v7, v8, :cond_1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 594
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 595
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 596
    invoke-virtual {v0, v4}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v14

    const/4 v0, 0x1

    move v15, v0

    .line 590
    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 600
    :cond_1
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 601
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v6

    :goto_0
    if-nez v0, :cond_3

    .line 606
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v4, 0x8

    .line 607
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 613
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v6

    .line 614
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v1, v5

    const-string v0, "PictureModeHelper.updateBlurredImageView"

    const-string v2, "didBlur: %b, took %d millis"

    .line 610
    invoke-static {v0, v2, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
