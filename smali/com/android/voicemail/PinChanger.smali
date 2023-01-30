.class public interface abstract Lcom/android/voicemail/PinChanger;
.super Ljava/lang/Object;
.source "PinChanger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/PinChanger$PinSpecification;,
        Lcom/android/voicemail/PinChanger$ChangePinResult;
    }
.end annotation


# static fields
.field public static final CHANGE_PIN_INVALID_CHARACTER:I = 0x5

.field public static final CHANGE_PIN_IN_USE:I = 0x7

.field public static final CHANGE_PIN_MISMATCH:I = 0x4

.field public static final CHANGE_PIN_SUCCESS:I = 0x0

.field public static final CHANGE_PIN_SYSTEM_ERROR:I = 0x6

.field public static final CHANGE_PIN_TOO_LONG:I = 0x2

.field public static final CHANGE_PIN_TOO_SHORT:I = 0x1

.field public static final CHANGE_PIN_TOO_WEAK:I = 0x3


# virtual methods
.method public abstract changePin(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getPinSpecification()Lcom/android/voicemail/PinChanger$PinSpecification;
.end method

.method public abstract getScrambledPin()Ljava/lang/String;
.end method

.method public abstract setScrambledPin(Ljava/lang/String;)V
.end method
