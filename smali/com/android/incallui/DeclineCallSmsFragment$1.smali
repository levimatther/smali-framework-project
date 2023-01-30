.class Lcom/android/incallui/DeclineCallSmsFragment$1;
.super Ljava/lang/Object;
.source "DeclineCallSmsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/DeclineCallSmsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/DeclineCallSmsFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/DeclineCallSmsFragment;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/incallui/DeclineCallSmsFragment$1;->this$0:Lcom/android/incallui/DeclineCallSmsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 88
    iget-object p1, p0, Lcom/android/incallui/DeclineCallSmsFragment$1;->this$0:Lcom/android/incallui/DeclineCallSmsFragment;

    invoke-static {p1}, Lcom/android/incallui/DeclineCallSmsFragment;->access$000(Lcom/android/incallui/DeclineCallSmsFragment;)Lcom/android/incallui/DeclineCallSmsFragment$RejectCallListener;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/android/incallui/DeclineCallSmsFragment$RejectCallListener;->onClick(I)V

    return-void
.end method
