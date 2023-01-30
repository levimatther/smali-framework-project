.class Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;
.super Landroid/os/AsyncTask;
.source "ClearFrequentsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;->this$1:Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;

    iput-object p2, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 65
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 68
    iget-object p1, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;->this$1:Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;

    iget-object p1, p1, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->val$resolver:Landroid/content/ContentResolver;

    sget-object v0, Landroid/provider/ContactsContract$DataUsageFeedback;->DELETE_USAGE_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 65
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method
