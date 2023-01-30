.class Lcom/android/incallui/incall/impl/InCallFragment$1;
.super Ljava/lang/Object;
.source "InCallFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/incall/impl/InCallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/incall/impl/InCallFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/incall/impl/InCallFragment;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$1;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/android/incallui/incall/impl/InCallFragment$1;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {v0}, Lcom/android/incallui/incall/impl/InCallFragment;->access$100(Lcom/android/incallui/incall/impl/InCallFragment;)Lcom/android/dialer/widget/LockableViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/incall/impl/InCallFragment$1;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {v1}, Lcom/android/incallui/incall/impl/InCallFragment;->access$000(Lcom/android/incallui/incall/impl/InCallFragment;)Lcom/android/incallui/incall/impl/InCallPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/incall/impl/InCallPagerAdapter;->getButtonGridPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/LockableViewPager;->setCurrentItem(I)V

    return-void
.end method
