.class Lcom/android/dialer/blocking/BlockNumberDialogFragment$1;
.super Ljava/lang/Object;
.source "BlockNumberDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/blocking/BlockNumberDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/blocking/BlockNumberDialogFragment;

.field final synthetic val$isBlocked:Z


# direct methods
.method constructor <init>(Lcom/android/dialer/blocking/BlockNumberDialogFragment;Z)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$1;->this$0:Lcom/android/dialer/blocking/BlockNumberDialogFragment;

    iput-boolean p2, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$1;->val$isBlocked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 162
    iget-boolean p1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$1;->val$isBlocked:Z

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$1;->this$0:Lcom/android/dialer/blocking/BlockNumberDialogFragment;

    invoke-static {p1}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->access$000(Lcom/android/dialer/blocking/BlockNumberDialogFragment;)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment$1;->this$0:Lcom/android/dialer/blocking/BlockNumberDialogFragment;

    invoke-static {p1}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->access$100(Lcom/android/dialer/blocking/BlockNumberDialogFragment;)V

    :goto_0
    return-void
.end method
