.class public interface abstract Lcom/android/dialer/calllog/datasources/DataSources;
.super Ljava/lang/Object;
.source "DataSources.java"


# virtual methods
.method public abstract getDataSourcesExcludingSystemCallLog()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/calllog/datasources/CallLogDataSource;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDataSourcesIncludingSystemCallLog()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/calllog/datasources/CallLogDataSource;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSystemCallLogDataSource()Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;
.end method
