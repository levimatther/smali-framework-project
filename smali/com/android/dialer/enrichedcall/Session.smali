.class public interface abstract Lcom/android/dialer/enrichedcall/Session;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/enrichedcall/Session$State;
    }
.end annotation


# static fields
.field public static final MESSAGE_ID_COULD_NOT_CREATE_ID:Ljava/lang/String; = "messageIdCouldNotCreateId"

.field public static final NO_SESSION_ID:J = -0x1L

.field public static final STATE_CLOSED:I = 0x6

.field public static final STATE_MESSAGE_FAILED:I = 0x5

.field public static final STATE_MESSAGE_SENT:I = 0x4

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_STARTED:I = 0x2

.field public static final STATE_STARTING:I = 0x1

.field public static final STATE_START_FAILED:I = 0x3


# virtual methods
.method public abstract getMultimediaData()Lcom/android/dialer/multimedia/MultimediaData;
.end method

.method public abstract getRemoteNumber()Ljava/lang/String;
.end method

.method public abstract getSessionId()J
.end method

.method public abstract getState()I
.end method

.method public abstract getType()I
.end method

.method public abstract getUniqueDialerCallId()Ljava/lang/String;
.end method

.method public abstract setSessionData(Lcom/android/dialer/multimedia/MultimediaData;I)V
.end method

.method public abstract setUniqueDialerCallId(Ljava/lang/String;)V
.end method
