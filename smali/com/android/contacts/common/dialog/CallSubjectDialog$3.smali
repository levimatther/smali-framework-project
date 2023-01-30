.class Lcom/android/contacts/common/dialog/CallSubjectDialog$3;
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

    .line 127
    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$3;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 130
    iget-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$3;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-static {p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$200(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$3;->this$0:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->access$300(Lcom/android/contacts/common/dialog/CallSubjectDialog;Z)V

    :cond_0
    return-void
.end method
