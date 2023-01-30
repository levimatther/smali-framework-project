.class public interface abstract Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntryOrBuilder;
.super Ljava/lang/Object;
.source "CallDetailsEntries.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calldetails/CallDetailsEntries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallDetailsEntryOrBuilder"
.end annotation


# virtual methods
.method public abstract getAccountId()Ljava/lang/String;
.end method

.method public abstract getAccountIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCallId()J
.end method

.method public abstract getCallType()I
.end method

.method public abstract getDataUsage()J
.end method

.method public abstract getDate()J
.end method

.method public abstract getDuration()J
.end method

.method public abstract getFeatures()I
.end method

.method public abstract getHistoryResults(I)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;
.end method

.method public abstract getHistoryResultsCount()I
.end method

.method public abstract getHistoryResultsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasAccountId()Z
.end method

.method public abstract hasCallId()Z
.end method

.method public abstract hasCallType()Z
.end method

.method public abstract hasDataUsage()Z
.end method

.method public abstract hasDate()Z
.end method

.method public abstract hasDuration()Z
.end method

.method public abstract hasFeatures()Z
.end method
