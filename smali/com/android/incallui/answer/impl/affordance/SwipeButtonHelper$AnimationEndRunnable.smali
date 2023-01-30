.class Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$AnimationEndRunnable;
.super Ljava/lang/Object;
.source "SwipeButtonHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationEndRunnable"
.end annotation


# instance fields
.field private final rightPage:Z

.field final synthetic this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;


# direct methods
.method public constructor <init>(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;Z)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$AnimationEndRunnable;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean p2, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$AnimationEndRunnable;->rightPage:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$AnimationEndRunnable;->this$0:Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;->access$300(Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper;)Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$AnimationEndRunnable;->rightPage:Z

    invoke-interface {v0, v1}, Lcom/android/incallui/answer/impl/affordance/SwipeButtonHelper$Callback;->onAnimationToSideEnded(Z)V

    return-void
.end method
