.class public interface abstract Lcom/android/dialer/rtt/RttTranscriptOrBuilder;
.super Ljava/lang/Object;
.source "RttTranscriptOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMessages(I)Lcom/android/dialer/rtt/RttTranscriptMessage;
.end method

.method public abstract getMessagesCount()I
.end method

.method public abstract getMessagesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/rtt/RttTranscriptMessage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNumber()Ljava/lang/String;
.end method

.method public abstract getNumberBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasNumber()Z
.end method

.method public abstract hasTimestamp()Z
.end method
