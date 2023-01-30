.class Lcom/android/incallui/answer/impl/SmsBottomSheetFragment$1;
.super Ljava/lang/Object;
.source "SmsBottomSheetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/answer/impl/SmsBottomSheetFragment;->newTextViewItem(Ljava/lang/CharSequence;)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/answer/impl/SmsBottomSheetFragment;

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/incallui/answer/impl/SmsBottomSheetFragment;Ljava/lang/CharSequence;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment$1;->this$0:Lcom/android/incallui/answer/impl/SmsBottomSheetFragment;

    iput-object p2, p0, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment$1;->val$text:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 115
    iget-object p1, p0, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment$1;->this$0:Lcom/android/incallui/answer/impl/SmsBottomSheetFragment;

    const-class v0, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment$SmsSheetHolder;

    invoke-static {p1, v0}, Lcom/android/dialer/common/FragmentUtils;->getParentUnsafe(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment$SmsSheetHolder;

    iget-object v0, p0, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment$1;->val$text:Ljava/lang/CharSequence;

    .line 116
    invoke-interface {p1, v0}, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment$SmsSheetHolder;->smsSelected(Ljava/lang/CharSequence;)V

    .line 117
    iget-object p1, p0, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment$1;->this$0:Lcom/android/incallui/answer/impl/SmsBottomSheetFragment;

    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment;->dismiss()V

    return-void
.end method
