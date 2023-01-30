.class Lcom/android/incallui/PostCharDialogFragment$1;
.super Ljava/lang/Object;
.source "PostCharDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/PostCharDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/PostCharDialogFragment;

.field final synthetic val$tctDialog:Landroid/app/TctDialog;


# direct methods
.method constructor <init>(Lcom/android/incallui/PostCharDialogFragment;Landroid/app/TctDialog;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/incallui/PostCharDialogFragment$1;->this$0:Lcom/android/incallui/PostCharDialogFragment;

    iput-object p2, p0, Lcom/android/incallui/PostCharDialogFragment$1;->val$tctDialog:Landroid/app/TctDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 66
    iget-object p1, p0, Lcom/android/incallui/PostCharDialogFragment$1;->val$tctDialog:Landroid/app/TctDialog;

    invoke-virtual {p1}, Landroid/app/TctDialog;->dismiss()V

    .line 67
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/android/incallui/PostCharDialogFragment$1;->this$0:Lcom/android/incallui/PostCharDialogFragment;

    invoke-static {p2}, Lcom/android/incallui/PostCharDialogFragment;->access$000(Lcom/android/incallui/PostCharDialogFragment;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/incallui/call/TelecomAdapter;->postDialContinue(Ljava/lang/String;Z)V

    return-void
.end method
