.class Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$2$1;
.super Ljava/lang/Object;
.source "PseudoEmergencyAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$2;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$2;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$2$1;->this$1:Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$2$1;->this$1:Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$2;

    iget-object v0, v0, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator$2;->this$0:Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;->access$100(Lcom/android/dialer/app/dialpad/PseudoEmergencyAnimator;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
