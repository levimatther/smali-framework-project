.class Lcom/android/contacts/common/dialog/CallSubjectDialog$2;
.super Ljava/lang/Object;
.source "CallSubjectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/dialog/CallSubjectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$2;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 118
    iget-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$2;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$100(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1, p1, v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->hideSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 119
    iget-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$2;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$200(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$300(Lcom/android/contacts/common/dialog/CallSubjectDialog;Z)V

    return-void
.end method
