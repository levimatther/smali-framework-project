.class public final Lcom/android/dialer/logging/ScreenEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ScreenEvent.java"

# interfaces
.implements Lcom/android/dialer/logging/ScreenEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/logging/ScreenEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/dialer/logging/ScreenEvent;",
        "Lcom/android/dialer/logging/ScreenEvent$Builder;",
        ">;",
        "Lcom/android/dialer/logging/ScreenEventOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 481
    invoke-static {}, Lcom/android/dialer/logging/ScreenEvent;->access$000()Lcom/android/dialer/logging/ScreenEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/logging/ScreenEvent$1;)V
    .locals 0

    .line 474
    invoke-direct {p0}, Lcom/android/dialer/logging/ScreenEvent$Builder;-><init>()V

    return-void
.end method
