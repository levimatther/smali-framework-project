.class Lcom/android/incallui/ExtBottomSheetFragment$1;
.super Ljava/lang/Object;
.source "ExtBottomSheetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/ExtBottomSheetFragment;->newTextView(Ljava/lang/String;)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ExtBottomSheetFragment;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/incallui/ExtBottomSheetFragment;Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/android/incallui/ExtBottomSheetFragment$1;->this$0:Lcom/android/incallui/ExtBottomSheetFragment;

    iput-object p2, p0, Lcom/android/incallui/ExtBottomSheetFragment$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 170
    iget-object p1, p0, Lcom/android/incallui/ExtBottomSheetFragment$1;->this$0:Lcom/android/incallui/ExtBottomSheetFragment;

    invoke-virtual {p1}, Lcom/android/incallui/ExtBottomSheetFragment;->dismiss()V

    .line 171
    iget-object p1, p0, Lcom/android/incallui/ExtBottomSheetFragment$1;->this$0:Lcom/android/incallui/ExtBottomSheetFragment;

    const-class v0, Lcom/android/incallui/ExtBottomSheetFragment$ExtBottomSheetActionCallback;

    invoke-static {p1, v0}, Lcom/android/dialer/common/FragmentUtils;->getParentUnsafe(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/ExtBottomSheetFragment$ExtBottomSheetActionCallback;

    iget-object v0, p0, Lcom/android/incallui/ExtBottomSheetFragment$1;->val$text:Ljava/lang/String;

    .line 172
    invoke-interface {p1, v0}, Lcom/android/incallui/ExtBottomSheetFragment$ExtBottomSheetActionCallback;->optionSelected(Ljava/lang/String;)V

    return-void
.end method
