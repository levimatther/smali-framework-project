.class public abstract Lcom/android/dialer/calllog/CallLogModule;
.super Ljava/lang/Object;
.source "CallLogModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static provideCallLogDataSources(Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;Lcom/android/dialer/calllog/datasources/contacts/ContactsDataSource;)Lcom/android/dialer/calllog/datasources/DataSources;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/dialer/calllog/datasources/CallLogDataSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 38
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 39
    new-instance v0, Lcom/android/dialer/calllog/CallLogModule$1;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/calllog/CallLogModule$1;-><init>(Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;Ljava/util/List;)V

    return-object v0
.end method
