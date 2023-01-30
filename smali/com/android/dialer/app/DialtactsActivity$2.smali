.class Lcom/android/dialer/app/DialtactsActivity$2;
.super Lcom/android/dialer/animation/AnimationListenerAdapter;
.source "DialtactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/DialtactsActivity;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$2;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-direct {p0}, Lcom/android/dialer/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 273
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$2;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {p1}, Lcom/android/dialer/app/DialtactsActivity;->access$100(Lcom/android/dialer/app/DialtactsActivity;)V

    return-void
.end method
