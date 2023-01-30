.class public Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;
.super Ljava/lang/Object;
.source "PseudoEmergencyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$ViewProvider;
    }
.end annotation


# static fields
.field private static final ANIMATION_ITERATION_COUNT:I = 0x6

.field private static final ITERATION_LENGTH_MILLIS:I = 0x3e8

.field public static final PSEUDO_EMERGENCY_NUMBER:Ljava/lang/String; = "01189998819991197253"

.field private static final VIBRATE_LENGTH_MILLIS:I = 0xc8


# instance fields
.field private mPseudoEmergencyColorAnimator:Landroid/animation/ValueAnimator;

.field private mViewProvider:Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$ViewProvider;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$ViewProvider;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;->mViewProvider:Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$ViewProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;)Landroid/view/View;
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;J)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;->vibrate(J)V

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 144
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getView()Landroid/view/View;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;->mViewProvider:Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$ViewProvider;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$ViewProvider;->getView()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private vibrate(J)V
    .locals 2

    .line 149
    invoke-direct {p0}, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "vibrator"

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;->end()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;->mViewProvider:Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$ViewProvider;

    return-void
.end method

.method public end()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;->mPseudoEmergencyColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;->mPseudoEmergencyColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 6

    .line 54
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;->mPseudoEmergencyColorAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const v0, -0xffff01

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/high16 v1, -0x10000

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 57
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    .line 58
    invoke-static {v2, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;->mPseudoEmergencyColorAnimator:Landroid/animation/ValueAnimator;

    .line 60
    new-instance v1, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$1;-><init>(Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 79
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;->mPseudoEmergencyColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$2;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$2;-><init>(Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 124
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;->mPseudoEmergencyColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 125
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;->mPseudoEmergencyColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 126
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;->mPseudoEmergencyColorAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;->mPseudoEmergencyColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;->mPseudoEmergencyColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method
