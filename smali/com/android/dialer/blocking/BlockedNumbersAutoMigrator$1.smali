.class Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator$1;
.super Ljava/lang/Object;
.source "BlockedNumbersAutoMigrator.java"

# interfaces
.implements Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;->autoMigrate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;


# direct methods
.method constructor <init>(Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator$1;->this$0:Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHasBlockedNumbers(Z)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "BlockedNumbersAutoMigrator"

    if-eqz p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "not auto-migrating: blocked numbers exist."

    .line 85
    invoke-static {v1, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "auto-migrating: no blocked numbers."

    .line 88
    invoke-static {v1, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator$1;->this$0:Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;

    invoke-static {p1}, Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;->access$000(Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->setHasMigratedToNewBlocking(Landroid/content/Context;Z)V

    return-void
.end method
