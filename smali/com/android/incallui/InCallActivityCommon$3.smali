.class Lcom/android/incallui/InCallActivityCommon$3;
.super Lcom/android/dialer/animation/AnimationListenerAdapter;
.source "InCallActivityCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallActivityCommon;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivityCommon;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivityCommon;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/android/incallui/InCallActivityCommon$3;->this$0:Lcom/android/incallui/InCallActivityCommon;

    invoke-direct {p0}, Lcom/android/dialer/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 232
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon$3;->this$0:Lcom/android/incallui/InCallActivityCommon;

    invoke-static {p1}, Lcom/android/incallui/InCallActivityCommon;->access$000(Lcom/android/incallui/InCallActivityCommon;)V

    return-void
.end method
