.class Lcom/android/dialer/blocking/BlockedNumbersMigrator$MigratorTask;
.super Landroid/os/AsyncTask;
.source "BlockedNumbersMigrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/blocking/BlockedNumbersMigrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MigratorTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final listener:Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;

.field final synthetic this$0:Lcom/android/dialer/blocking/BlockedNumbersMigrator;


# direct methods
.method public constructor <init>(Lcom/android/dialer/blocking/BlockedNumbersMigrator;Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/android/dialer/blocking/BlockedNumbersMigrator$MigratorTask;->this$0:Lcom/android/dialer/blocking/BlockedNumbersMigrator;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 142
    iput-object p2, p0, Lcom/android/dialer/blocking/BlockedNumbersMigrator$MigratorTask;->listener:Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "BlockedNumbersMigrator.doInBackground"

    const-string v1, "migrate - start background migration"

    .line 147
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockedNumbersMigrator$MigratorTask;->this$0:Lcom/android/dialer/blocking/BlockedNumbersMigrator;

    invoke-static {p1}, Lcom/android/dialer/blocking/BlockedNumbersMigrator;->access$000(Lcom/android/dialer/blocking/BlockedNumbersMigrator;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/blocking/BlockedNumbersMigrator;->access$100(Landroid/content/ContentResolver;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 136
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/dialer/blocking/BlockedNumbersMigrator$MigratorTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "BlockedNumbersMigrator.onPostExecute"

    const-string v3, "migrate - marking migration complete"

    .line 153
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iget-object v1, p0, Lcom/android/dialer/blocking/BlockedNumbersMigrator$MigratorTask;->this$0:Lcom/android/dialer/blocking/BlockedNumbersMigrator;

    invoke-static {v1}, Lcom/android/dialer/blocking/BlockedNumbersMigrator;->access$000(Lcom/android/dialer/blocking/BlockedNumbersMigrator;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v1, p1}, Lcom/android/dialer/blocking/FilteredNumberCompat;->setHasMigratedToNewBlocking(Landroid/content/Context;Z)V

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "migrate - calling listener"

    .line 155
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockedNumbersMigrator$MigratorTask;->listener:Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;

    invoke-interface {p1}, Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;->onComplete()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 136
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/dialer/blocking/BlockedNumbersMigrator$MigratorTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
