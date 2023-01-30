.class final Lcom/android/dialer/calllog/CallLogModule$1;
.super Ljava/lang/Object;
.source "CallLogModule.java"

# interfaces
.implements Lcom/android/dialer/calllog/datasources/DataSources;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogModule;->provideCallLogDataSources(Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;Lcom/android/dialer/calllog/datasources/contacts/ContactsDataSource;)Lcom/android/dialer/calllog/datasources/DataSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$allDataSources:Ljava/util/List;

.field final synthetic val$systemCallLogDataSource:Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;Ljava/util/List;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogModule$1;->val$systemCallLogDataSource:Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;

    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogModule$1;->val$allDataSources:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataSourcesExcludingSystemCallLog()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/calllog/datasources/CallLogDataSource;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogModule$1;->val$allDataSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDataSourcesIncludingSystemCallLog()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/calllog/datasources/CallLogDataSource;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogModule$1;->val$allDataSources:Ljava/util/List;

    return-object v0
.end method

.method public getSystemCallLogDataSource()Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogModule$1;->val$systemCallLogDataSource:Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;

    return-object v0
.end method
