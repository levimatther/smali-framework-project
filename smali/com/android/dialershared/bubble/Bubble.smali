.class public Lcom/android/dialershared/bubble/Bubble;
.super Ljava/lang/Object;
.source "Bubble.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialershared/bubble/Bubble$ViewHolder;,
        Lcom/android/dialershared/bubble/Bubble$BubbleFactory;,
        Lcom/android/dialershared/bubble/Bubble$Visibility;,
        Lcom/android/dialershared/bubble/Bubble$CollapseEnd;
    }
.end annotation


# static fields
.field private static final SHOW_TEXT_DURATION_MILLIS:I = 0xbb8

.field private static final WINDOW_REDRAW_DELAY_MILLIS:I = 0x32

.field private static bubbleFactory:Lcom/android/dialershared/bubble/Bubble$BubbleFactory;

.field private static canShowBubblesForTesting:Ljava/lang/Boolean;


# instance fields
.field private collapseAnimation:Landroid/view/ViewPropertyAnimator;

.field private collapseEndAction:I

.field private final context:Landroid/content/Context;

.field private currentInfo:Lcom/android/dialershared/bubble/BubbleInfo;

.field private exitAnimator:Landroid/view/ViewPropertyAnimator;

.field private expanded:Z

.field private final handler:Landroid/os/Handler;

.field private hideAfterText:Z

.field private overrideGravity:Ljava/lang/Integer;

.field private textShowing:Z

.field private viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

.field private visibility:I

.field private final windowManager:Landroid/view/WindowManager;

.field private windowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 160
    sget-object v0, Lcom/android/dialershared/bubble/-$$Lambda$7Gz657TZTdd0sU6la4Mzh3AarPQ;->INSTANCE:Lcom/android/dialershared/bubble/-$$Lambda$7Gz657TZTdd0sU6la4Mzh3AarPQ;

    sput-object v0, Lcom/android/dialershared/bubble/Bubble;->bubbleFactory:Lcom/android/dialershared/bubble/Bubble$BubbleFactory;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->handler:Landroid/os/Handler;

    .line 175
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f1201dc

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 176
    iput-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->context:Landroid/content/Context;

    .line 177
    const-class p1, Landroid/view/WindowManager;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/dialershared/bubble/Bubble;->windowManager:Landroid/view/WindowManager;

    .line 179
    new-instance p1, Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-direct {p1, p0, v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;-><init>(Lcom/android/dialershared/bubble/Bubble;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialershared/bubble/Bubble;)Z
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/dialershared/bubble/Bubble;->isDrawingFromRight()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/dialershared/bubble/Bubble;)Landroid/os/Handler;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/dialershared/bubble/Bubble;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/dialershared/bubble/Bubble;)Landroid/view/WindowManager;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/dialershared/bubble/Bubble;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/dialershared/bubble/Bubble;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/android/dialershared/bubble/Bubble;->expanded:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/dialershared/bubble/Bubble;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/dialershared/bubble/Bubble;->startCollapse(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/dialershared/bubble/Bubble;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/android/dialershared/bubble/Bubble;->visibility:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/dialershared/bubble/Bubble;)Lcom/android/dialershared/bubble/Bubble$ViewHolder;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    return-object p0
.end method

.method public static canShowBubbles(Landroid/content/Context;)Z
    .locals 2

    .line 136
    sget-object v0, Lcom/android/dialershared/bubble/Bubble;->canShowBubblesForTesting:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 138
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private configureButton(Lcom/android/dialershared/bubble/BubbleInfo$Action;Lcom/android/dialershared/bubble/CheckableImageButton;)V
    .locals 4

    .line 555
    invoke-virtual {p1}, Lcom/android/dialershared/bubble/BubbleInfo$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble;->context:Landroid/content/Context;

    new-instance v2, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$_bfvRcHX8qD8p3QMnMIi2qUZx2Y;

    invoke-direct {v2, p2, p1}, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$_bfvRcHX8qD8p3QMnMIi2qUZx2Y;-><init>(Lcom/android/dialershared/bubble/CheckableImageButton;Lcom/android/dialershared/bubble/BubbleInfo$Action;)V

    iget-object v3, p0, Lcom/android/dialershared/bubble/Bubble;->handler:Landroid/os/Handler;

    .line 556
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    .line 565
    new-instance v0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$37PSwh9FNAzZbkGEky9JfoKRCB4;

    invoke-direct {v0, p0, p1}, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$37PSwh9FNAzZbkGEky9JfoKRCB4;-><init>(Lcom/android/dialershared/bubble/Bubble;Lcom/android/dialershared/bubble/BubbleInfo$Action;)V

    invoke-virtual {p2, v0}, Lcom/android/dialershared/bubble/CheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static createBubble(Landroid/content/Context;Lcom/android/dialershared/bubble/BubbleInfo;)Lcom/android/dialershared/bubble/Bubble;
    .locals 1

    .line 163
    sget-object v0, Lcom/android/dialershared/bubble/Bubble;->bubbleFactory:Lcom/android/dialershared/bubble/Bubble$BubbleFactory;

    invoke-interface {v0, p0}, Lcom/android/dialershared/bubble/Bubble$BubbleFactory;->createBubble(Landroid/content/Context;)Lcom/android/dialershared/bubble/Bubble;

    move-result-object p0

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/dialershared/bubble/Bubble;->setBubbleInfo(Lcom/android/dialershared/bubble/BubbleInfo;)V

    return-object p0
.end method

.method private doAction(Lcom/android/dialershared/bubble/BubbleInfo$Action;)V
    .locals 1

    .line 570
    :try_start_0
    invoke-virtual {p1}, Lcom/android/dialershared/bubble/BubbleInfo$Action;->getIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 572
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private doResize(Ljava/lang/Runnable;)V
    .locals 3

    .line 582
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    .line 583
    invoke-direct {p0}, Lcom/android/dialershared/bubble/Bubble;->isDrawingFromRight()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    new-instance v1, Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getRoot()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;-><init>(Lcom/android/dialershared/bubble/Bubble;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    .line 585
    invoke-direct {p0}, Lcom/android/dialershared/bubble/Bubble;->update()V

    .line 586
    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    .line 587
    invoke-virtual {v1}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getPrimaryButton()Landroid/widget/ViewAnimator;

    move-result-object v1

    .line 588
    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getPrimaryButton()Landroid/widget/ViewAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 589
    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v1}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getPrimaryText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getPrimaryText()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 593
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 596
    :cond_1
    invoke-direct {p0}, Lcom/android/dialershared/bubble/Bubble;->isDrawingFromRight()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 597
    invoke-direct {p0, v0}, Lcom/android/dialershared/bubble/Bubble;->swapViewHolders(Lcom/android/dialershared/bubble/Bubble$ViewHolder;)V

    :cond_2
    return-void
.end method

.method private doShowText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getPrimaryButton()Landroid/widget/ViewAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 549
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getPrimaryText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object p1, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {p1}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getPrimaryButton()Landroid/widget/ViewAnimator;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    return-void
.end method

.method public static getRequestPermissionIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 149
    new-instance v0, Landroid/content/Intent;

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method private isDrawingFromRight()Z
    .locals 2

    .line 674
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x5

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$configureButton$6(Lcom/android/dialershared/bubble/CheckableImageButton;Lcom/android/dialershared/bubble/BubbleInfo$Action;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 559
    invoke-virtual {p1}, Lcom/android/dialershared/bubble/BubbleInfo$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/dialershared/bubble/CheckableImageButton;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 560
    invoke-virtual {p1}, Lcom/android/dialershared/bubble/BubbleInfo$Action;->getName()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/dialershared/bubble/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 561
    invoke-virtual {p1}, Lcom/android/dialershared/bubble/BubbleInfo$Action;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/dialershared/bubble/CheckableImageButton;->setChecked(Z)V

    .line 562
    invoke-virtual {p1}, Lcom/android/dialershared/bubble/BubbleInfo$Action;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/dialershared/bubble/CheckableImageButton;->setEnabled(Z)V

    return-void
.end method

.method private setBackgroundDrawable(Lcom/android/dialershared/bubble/CheckableImageButton;I)V
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->context:Landroid/content/Context;

    .line 527
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble;->context:Landroid/content/Context;

    .line 528
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f080087

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    .line 529
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 530
    invoke-virtual {p1, v0}, Lcom/android/dialershared/bubble/CheckableImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setBubbleFactory(Lcom/android/dialershared/bubble/Bubble$BubbleFactory;)V
    .locals 0

    .line 170
    sput-object p0, Lcom/android/dialershared/bubble/Bubble;->bubbleFactory:Lcom/android/dialershared/bubble/Bubble$BubbleFactory;

    return-void
.end method

.method public static setCanShowBubblesForTesting(Z)V
    .locals 0

    .line 143
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/android/dialershared/bubble/Bubble;->canShowBubblesForTesting:Ljava/lang/Boolean;

    return-void
.end method

.method private setFocused(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 679
    iget-object p1, p0, Lcom/android/dialershared/bubble/Bubble;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 681
    :cond_0
    iget-object p1, p0, Lcom/android/dialershared/bubble/Bubble;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 683
    :goto_0
    iget-object p1, p0, Lcom/android/dialershared/bubble/Bubble;->windowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/dialershared/bubble/Bubble;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble;->windowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private startCollapse(I)V
    .locals 2

    .line 621
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getExpandedView()Landroid/view/View;

    move-result-object v0

    .line 622
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble;->collapseAnimation:Landroid/view/ViewPropertyAnimator;

    if-eqz v1, :cond_0

    goto :goto_2

    .line 627
    :cond_0
    invoke-direct {p0}, Lcom/android/dialershared/bubble/Bubble;->isDrawingFromRight()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialershared/bubble/Bubble;->overrideGravity:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 628
    invoke-direct {p0, v1}, Lcom/android/dialershared/bubble/Bubble;->setFocused(Z)V

    .line 630
    iget v1, p0, Lcom/android/dialershared/bubble/Bubble;->collapseEndAction:I

    if-nez v1, :cond_2

    .line 631
    iput p1, p0, Lcom/android/dialershared/bubble/Bubble;->collapseEndAction:I

    .line 635
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 636
    invoke-direct {p0}, Lcom/android/dialershared/bubble/Bubble;->isDrawingFromRight()Z

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    neg-int v0, v0

    :goto_1
    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    .line 637
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$5hrAgJaNLhIlA_ZGTmlRZmv-cS0;

    invoke-direct {v0, p0}, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$5hrAgJaNLhIlA_ZGTmlRZmv-cS0;-><init>(Lcom/android/dialershared/bubble/Bubble;)V

    .line 638
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialershared/bubble/Bubble;->collapseAnimation:Landroid/view/ViewPropertyAnimator;

    :cond_4
    :goto_2
    return-void
.end method

.method private swapViewHolders(Lcom/android/dialershared/bubble/Bubble$ViewHolder;)V
    .locals 3

    .line 602
    invoke-virtual {p1}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getShadowProvider()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 603
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 604
    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/dialershared/bubble/Bubble;->windowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/dialershared/bubble/Bubble$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/dialershared/bubble/Bubble$3;-><init>(Lcom/android/dialershared/bubble/Bubble;Landroid/view/ViewGroup;Lcom/android/dialershared/bubble/Bubble$ViewHolder;)V

    .line 606
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private update()V
    .locals 5

    .line 484
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->context:Landroid/content/Context;

    .line 486
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f080088

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 487
    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble;->context:Landroid/content/Context;

    const v2, 0x7f06004b

    .line 489
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/dialershared/bubble/Bubble;->currentInfo:Lcom/android/dialershared/bubble/BubbleInfo;

    .line 490
    invoke-virtual {v2}, Lcom/android/dialershared/bubble/BubbleInfo;->getPrimaryColor()I

    move-result v2

    .line 488
    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v1

    const/4 v2, 0x0

    .line 491
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 492
    iget-object v3, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v3}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getPrimaryButton()Landroid/widget/ViewAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ViewAnimator;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 494
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getFirstButton()Lcom/android/dialershared/bubble/CheckableImageButton;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/dialershared/bubble/Bubble;->setBackgroundDrawable(Lcom/android/dialershared/bubble/CheckableImageButton;I)V

    .line 495
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getSecondButton()Lcom/android/dialershared/bubble/CheckableImageButton;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/dialershared/bubble/Bubble;->setBackgroundDrawable(Lcom/android/dialershared/bubble/CheckableImageButton;I)V

    .line 496
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getThirdButton()Lcom/android/dialershared/bubble/CheckableImageButton;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/dialershared/bubble/Bubble;->setBackgroundDrawable(Lcom/android/dialershared/bubble/CheckableImageButton;I)V

    .line 498
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->currentInfo:Lcom/android/dialershared/bubble/BubbleInfo;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/BubbleInfo;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 499
    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v1}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getThirdButton()Lcom/android/dialershared/bubble/CheckableImageButton;

    move-result-object v1

    const/16 v3, 0x8

    const/4 v4, 0x3

    if-ge v0, v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/dialershared/bubble/CheckableImageButton;->setVisibility(I)V

    .line 500
    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v1}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getSecondButton()Lcom/android/dialershared/bubble/CheckableImageButton;

    move-result-object v1

    const/4 v4, 0x2

    if-ge v0, v4, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/dialershared/bubble/CheckableImageButton;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getPrimaryIcon()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble;->currentInfo:Lcom/android/dialershared/bubble/BubbleInfo;

    invoke-virtual {v1}, Lcom/android/dialershared/bubble/BubbleInfo;->getPrimaryIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 503
    invoke-direct {p0}, Lcom/android/dialershared/bubble/Bubble;->updatePrimaryIconAnimation()V

    .line 505
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    .line 506
    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getExpandedView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble;->currentInfo:Lcom/android/dialershared/bubble/BubbleInfo;

    .line 507
    invoke-virtual {v1}, Lcom/android/dialershared/bubble/BubbleInfo;->getPrimaryColor()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 509
    invoke-direct {p0}, Lcom/android/dialershared/bubble/Bubble;->updateButtonStates()V

    return-void
.end method

.method private updateButtonStates()V
    .locals 4

    .line 534
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->currentInfo:Lcom/android/dialershared/bubble/BubbleInfo;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/BubbleInfo;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 537
    iget-object v2, p0, Lcom/android/dialershared/bubble/Bubble;->currentInfo:Lcom/android/dialershared/bubble/BubbleInfo;

    invoke-virtual {v2}, Lcom/android/dialershared/bubble/BubbleInfo;->getActions()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dialershared/bubble/BubbleInfo$Action;

    iget-object v3, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v3}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getFirstButton()Lcom/android/dialershared/bubble/CheckableImageButton;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/dialershared/bubble/Bubble;->configureButton(Lcom/android/dialershared/bubble/BubbleInfo$Action;Lcom/android/dialershared/bubble/CheckableImageButton;)V

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 539
    iget-object v3, p0, Lcom/android/dialershared/bubble/Bubble;->currentInfo:Lcom/android/dialershared/bubble/BubbleInfo;

    invoke-virtual {v3}, Lcom/android/dialershared/bubble/BubbleInfo;->getActions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialershared/bubble/BubbleInfo$Action;

    iget-object v3, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v3}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getSecondButton()Lcom/android/dialershared/bubble/CheckableImageButton;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/dialershared/bubble/Bubble;->configureButton(Lcom/android/dialershared/bubble/BubbleInfo$Action;Lcom/android/dialershared/bubble/CheckableImageButton;)V

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->currentInfo:Lcom/android/dialershared/bubble/BubbleInfo;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/BubbleInfo;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialershared/bubble/BubbleInfo$Action;

    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v1}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getThirdButton()Lcom/android/dialershared/bubble/CheckableImageButton;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/dialershared/bubble/Bubble;->configureButton(Lcom/android/dialershared/bubble/BubbleInfo$Action;Lcom/android/dialershared/bubble/CheckableImageButton;)V

    :cond_0
    return-void
.end method

.method private updatePrimaryIconAnimation()V
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getPrimaryIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 514
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_1

    .line 515
    invoke-virtual {p0}, Lcom/android/dialershared/bubble/Bubble;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    goto :goto_0

    .line 518
    :cond_0
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getBubbleInfo()Lcom/android/dialershared/bubble/BubbleInfo;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->currentInfo:Lcom/android/dialershared/bubble/BubbleInfo;

    return-object v0
.end method

.method getGravityOverride()Ljava/lang/Integer;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->overrideGravity:Ljava/lang/Integer;

    return-object v0
.end method

.method getRootView()Landroid/view/View;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getRoot()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method getWindowParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->windowParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public hide()V
    .locals 3

    .line 249
    iget v0, p0, Lcom/android/dialershared/bubble/Bubble;->visibility:I

    if-eqz v0, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    iget-boolean v0, p0, Lcom/android/dialershared/bubble/Bubble;->textShowing:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 254
    iput-boolean v2, p0, Lcom/android/dialershared/bubble/Bubble;->hideAfterText:Z

    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->collapseAnimation:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_2

    .line 259
    iput v2, p0, Lcom/android/dialershared/bubble/Bubble;->collapseEndAction:I

    return-void

    .line 263
    :cond_2
    iget-boolean v0, p0, Lcom/android/dialershared/bubble/Bubble;->expanded:Z

    if-eqz v0, :cond_3

    .line 264
    invoke-direct {p0, v2}, Lcom/android/dialershared/bubble/Bubble;->startCollapse(I)V

    return-void

    .line 268
    :cond_3
    iput v1, p0, Lcom/android/dialershared/bubble/Bubble;->visibility:I

    .line 269
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    .line 271
    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getPrimaryButton()Landroid/widget/ViewAnimator;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    .line 273
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 274
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 275
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$DqOp27x8h7ODT3M3n1U9SWnYH78;

    invoke-direct {v1, p0}, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$DqOp27x8h7ODT3M3n1U9SWnYH78;-><init>(Lcom/android/dialershared/bubble/Bubble;)V

    .line 276
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->exitAnimator:Landroid/view/ViewPropertyAnimator;

    .line 283
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_4
    :goto_0
    return-void
.end method

.method public isVisible()Z
    .locals 3

    .line 288
    iget v0, p0, Lcom/android/dialershared/bubble/Bubble;->visibility:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public synthetic lambda$configureButton$7$Bubble(Lcom/android/dialershared/bubble/BubbleInfo$Action;Landroid/view/View;)V
    .locals 0

    .line 565
    invoke-direct {p0, p1}, Lcom/android/dialershared/bubble/Bubble;->doAction(Lcom/android/dialershared/bubble/BubbleInfo$Action;)V

    return-void
.end method

.method public synthetic lambda$hide$1$Bubble()V
    .locals 2

    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->exitAnimator:Landroid/view/ViewPropertyAnimator;

    .line 279
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v1}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getRoot()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 280
    iput v0, p0, Lcom/android/dialershared/bubble/Bubble;->visibility:I

    .line 281
    invoke-direct {p0}, Lcom/android/dialershared/bubble/Bubble;->updatePrimaryIconAnimation()V

    return-void
.end method

.method public synthetic lambda$null$3$Bubble()V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getPrimaryButton()Landroid/widget/ViewAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    return-void
.end method

.method public synthetic lambda$null$8$Bubble()V
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->setDrawerVisibility(I)V

    return-void
.end method

.method public synthetic lambda$null$9$Bubble()V
    .locals 1

    const/4 v0, 0x0

    .line 663
    iput-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->overrideGravity:Ljava/lang/Integer;

    .line 664
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->isMoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->undoGravityOverride()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$primaryButtonClick$5$Bubble()V
    .locals 2

    .line 426
    invoke-direct {p0}, Lcom/android/dialershared/bubble/Bubble;->isDrawingFromRight()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/dialershared/bubble/Bubble;->onLeftRightSwitch(Z)V

    .line 427
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->setDrawerVisibility(I)V

    return-void
.end method

.method public synthetic lambda$show$0$Bubble()V
    .locals 1

    const/4 v0, 0x2

    .line 237
    iput v0, p0, Lcom/android/dialershared/bubble/Bubble;->visibility:I

    return-void
.end method

.method public synthetic lambda$showText$2$Bubble(Ljava/lang/CharSequence;Lcom/android/dialershared/bubble/ChangeOnScreenBounds;Landroid/transition/TransitionValues;)V
    .locals 2

    .line 340
    invoke-direct {p0, p1}, Lcom/android/dialershared/bubble/Bubble;->doShowText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object p1, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {p1}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getPrimaryText()Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 344
    iget-object p1, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {p1}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getPrimaryButton()Landroid/widget/ViewAnimator;

    move-result-object p1

    .line 346
    invoke-virtual {p1}, Landroid/widget/ViewAnimator;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 348
    invoke-virtual {p1}, Landroid/widget/ViewAnimator;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/dialershared/bubble/Bubble$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/dialershared/bubble/Bubble$1;-><init>(Lcom/android/dialershared/bubble/Bubble;Landroid/widget/ViewAnimator;Lcom/android/dialershared/bubble/ChangeOnScreenBounds;Landroid/transition/TransitionValues;)V

    .line 349
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public synthetic lambda$showText$4$Bubble()V
    .locals 1

    const/4 v0, 0x0

    .line 380
    iput-boolean v0, p0, Lcom/android/dialershared/bubble/Bubble;->textShowing:Z

    .line 381
    iget-boolean v0, p0, Lcom/android/dialershared/bubble/Bubble;->hideAfterText:Z

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/android/dialershared/bubble/Bubble;->hide()V

    goto :goto_0

    .line 384
    :cond_0
    new-instance v0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$kcnnGq4XU0hNW37FZgBSPDqTgWA;

    invoke-direct {v0, p0}, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$kcnnGq4XU0hNW37FZgBSPDqTgWA;-><init>(Lcom/android/dialershared/bubble/Bubble;)V

    invoke-direct {p0, v0}, Lcom/android/dialershared/bubble/Bubble;->doResize(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$startCollapse$10$Bubble()V
    .locals 4

    const/4 v0, 0x0

    .line 640
    iput-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->collapseAnimation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    .line 641
    iput-boolean v0, p0, Lcom/android/dialershared/bubble/Bubble;->expanded:Z

    .line 643
    iget-boolean v1, p0, Lcom/android/dialershared/bubble/Bubble;->textShowing:Z

    if-eqz v1, :cond_0

    return-void

    .line 649
    :cond_0
    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->setDrawerVisibility(I)V

    .line 650
    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v1}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->isMoving()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/dialershared/bubble/Bubble;->isDrawingFromRight()Z

    move-result v1

    if-nez v1, :cond_2

    .line 651
    :cond_1
    new-instance v1, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$tY6hdTzyGKIOyVCepMBhbN5x-Qg;

    invoke-direct {v1, p0}, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$tY6hdTzyGKIOyVCepMBhbN5x-Qg;-><init>(Lcom/android/dialershared/bubble/Bubble;)V

    invoke-direct {p0, v1}, Lcom/android/dialershared/bubble/Bubble;->doResize(Ljava/lang/Runnable;)V

    .line 655
    :cond_2
    iget v1, p0, Lcom/android/dialershared/bubble/Bubble;->collapseEndAction:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 656
    invoke-virtual {p0}, Lcom/android/dialershared/bubble/Bubble;->hide()V

    .line 658
    :cond_3
    iput v0, p0, Lcom/android/dialershared/bubble/Bubble;->collapseEndAction:I

    .line 661
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$jA3j_3FK3RsehzXRrjGkuvC8O70;

    invoke-direct {v1, p0}, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$jA3j_3FK3RsehzXRrjGkuvC8O70;-><init>(Lcom/android/dialershared/bubble/Bubble;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method onLeftRightSwitch(Z)V
    .locals 4

    .line 451
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getExpandedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    .line 460
    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 461
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 462
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getRoot()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f090081

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 464
    move-object v2, v1

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_1

    const/4 v3, 0x5

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    :goto_0
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 465
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    .line 468
    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getExpandedView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_2

    const p1, 0x7f080086

    goto :goto_1

    :cond_2
    const p1, 0x7f080085

    .line 469
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method onMoveFinish()V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getPrimaryButton()Landroid/widget/ViewAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    .line 409
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getExpandedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 410
    invoke-direct {p0, v0}, Lcom/android/dialershared/bubble/Bubble;->doResize(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method onMoveStart()V
    .locals 3

    const/4 v0, 0x0

    .line 397
    invoke-direct {p0, v0}, Lcom/android/dialershared/bubble/Bubble;->startCollapse(I)V

    .line 398
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    .line 399
    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getPrimaryButton()Landroid/widget/ViewAnimator;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble;->context:Landroid/content/Context;

    .line 402
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    .line 401
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method primaryButtonClick()V
    .locals 3

    .line 415
    iget-boolean v0, p0, Lcom/android/dialershared/bubble/Bubble;->expanded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/dialershared/bubble/Bubble;->textShowing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->currentInfo:Lcom/android/dialershared/bubble/BubbleInfo;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/BubbleInfo;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    new-instance v0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$eL7asLRUw-tDfvhuadtHRQZXqBg;

    invoke-direct {v0, p0}, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$eL7asLRUw-tDfvhuadtHRQZXqBg;-><init>(Lcom/android/dialershared/bubble/Bubble;)V

    invoke-direct {p0, v0}, Lcom/android/dialershared/bubble/Bubble;->doResize(Ljava/lang/Runnable;)V

    .line 429
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getExpandedView()Landroid/view/View;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/dialershared/bubble/Bubble$2;

    invoke-direct {v2, p0, v0}, Lcom/android/dialershared/bubble/Bubble$2;-><init>(Lcom/android/dialershared/bubble/Bubble;Landroid/view/View;)V

    .line 432
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    .line 446
    invoke-direct {p0, v0}, Lcom/android/dialershared/bubble/Bubble;->setFocused(Z)V

    .line 447
    iput-boolean v0, p0, Lcom/android/dialershared/bubble/Bubble;->expanded:Z

    return-void

    .line 417
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->currentInfo:Lcom/android/dialershared/bubble/BubbleInfo;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/BubbleInfo;->getPrimaryIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 419
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setBubbleInfo(Lcom/android/dialershared/bubble/BubbleInfo;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/android/dialershared/bubble/Bubble;->currentInfo:Lcom/android/dialershared/bubble/BubbleInfo;

    .line 300
    invoke-direct {p0}, Lcom/android/dialershared/bubble/Bubble;->update()V

    return-void
.end method

.method public show()V
    .locals 5

    .line 187
    iget v0, p0, Lcom/android/dialershared/bubble/Bubble;->collapseEndAction:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 189
    iput v1, p0, Lcom/android/dialershared/bubble/Bubble;->collapseEndAction:I

    .line 191
    :cond_0
    iget v0, p0, Lcom/android/dialershared/bubble/Bubble;->visibility:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    if-ne v0, v2, :cond_1

    goto/16 :goto_2

    .line 195
    :cond_1
    iput-boolean v1, p0, Lcom/android/dialershared/bubble/Bubble;->hideAfterText:Z

    .line 197
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->windowParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_3

    .line 202
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x7f6

    goto :goto_0

    :cond_2
    const/16 v0, 0x7d2

    .line 206
    :goto_0
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const v3, 0x40228

    const/4 v4, -0x3

    invoke-direct {v1, v0, v3, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iput-object v1, p0, Lcom/android/dialershared/bubble/Bubble;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x33

    .line 214
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 215
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07007d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 216
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble;->currentInfo:Lcom/android/dialershared/bubble/BubbleInfo;

    invoke-virtual {v1}, Lcom/android/dialershared/bubble/BubbleInfo;->getStartingYPosition()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 217
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 218
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->exitAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_4

    .line 222
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->exitAnimator:Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 225
    :cond_4
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v1}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getRoot()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/android/dialershared/bubble/Bubble;->windowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getPrimaryButton()Landroid/widget/ViewAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setScaleX(F)V

    .line 227
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getPrimaryButton()Landroid/widget/ViewAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setScaleY(F)V

    .line 230
    :goto_1
    iput v2, p0, Lcom/android/dialershared/bubble/Bubble;->visibility:I

    .line 231
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    .line 232
    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getPrimaryButton()Landroid/widget/ViewAnimator;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 234
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 235
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 236
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$P_oQ4BcCZ0YVmUYkfrVnMixZxUc;

    invoke-direct {v1, p0}, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$P_oQ4BcCZ0YVmUYkfrVnMixZxUc;-><init>(Lcom/android/dialershared/bubble/Bubble;)V

    .line 237
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 240
    invoke-direct {p0}, Lcom/android/dialershared/bubble/Bubble;->updatePrimaryIconAnimation()V

    :cond_5
    :goto_2
    return-void
.end method

.method public showText(Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lcom/android/dialershared/bubble/Bubble;->textShowing:Z

    .line 326
    iget-boolean v0, p0, Lcom/android/dialershared/bubble/Bubble;->expanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 327
    invoke-direct {p0, v0}, Lcom/android/dialershared/bubble/Bubble;->startCollapse(I)V

    .line 328
    invoke-direct {p0, p1}, Lcom/android/dialershared/bubble/Bubble;->doShowText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 331
    :cond_0
    new-instance v0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds;

    invoke-direct {v0}, Lcom/android/dialershared/bubble/ChangeOnScreenBounds;-><init>()V

    .line 333
    new-instance v1, Landroid/transition/TransitionValues;

    invoke-direct {v1}, Landroid/transition/TransitionValues;-><init>()V

    .line 334
    iget-object v2, p0, Lcom/android/dialershared/bubble/Bubble;->viewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-virtual {v2}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getPrimaryButton()Landroid/widget/ViewAnimator;

    move-result-object v2

    iput-object v2, v1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 335
    iget-object v2, v1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/android/dialershared/bubble/ChangeOnScreenBounds;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 336
    invoke-virtual {v0, v1}, Lcom/android/dialershared/bubble/ChangeOnScreenBounds;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 338
    new-instance v2, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$uVyzbpzyqWIKvRI4sa_Urw9qwUA;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$uVyzbpzyqWIKvRI4sa_Urw9qwUA;-><init>(Lcom/android/dialershared/bubble/Bubble;Ljava/lang/CharSequence;Lcom/android/dialershared/bubble/ChangeOnScreenBounds;Landroid/transition/TransitionValues;)V

    invoke-direct {p0, v2}, Lcom/android/dialershared/bubble/Bubble;->doResize(Ljava/lang/Runnable;)V

    .line 377
    :goto_0
    iget-object p1, p0, Lcom/android/dialershared/bubble/Bubble;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 378
    iget-object p1, p0, Lcom/android/dialershared/bubble/Bubble;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$lhba80hc4TkICzfhyROrWVbO3Mo;

    invoke-direct {v0, p0}, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$lhba80hc4TkICzfhyROrWVbO3Mo;-><init>(Lcom/android/dialershared/bubble/Bubble;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/dialershared/bubble/BubbleInfo$Action;",
            ">;)V"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble;->currentInfo:Lcom/android/dialershared/bubble/BubbleInfo;

    invoke-static {v0}, Lcom/android/dialershared/bubble/BubbleInfo;->from(Lcom/android/dialershared/bubble/BubbleInfo;)Lcom/android/dialershared/bubble/BubbleInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/dialershared/bubble/BubbleInfo$Builder;->setActions(Ljava/util/List;)Lcom/android/dialershared/bubble/BubbleInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialershared/bubble/BubbleInfo$Builder;->build()Lcom/android/dialershared/bubble/BubbleInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialershared/bubble/Bubble;->currentInfo:Lcom/android/dialershared/bubble/BubbleInfo;

    .line 310
    invoke-direct {p0}, Lcom/android/dialershared/bubble/Bubble;->updateButtonStates()V

    return-void
.end method
