.class public final Lcom/android/dialer/logging/DialerImpression$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DialerImpression.java"

# interfaces
.implements Lcom/android/dialer/logging/DialerImpressionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/logging/DialerImpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/dialer/logging/DialerImpression;",
        "Lcom/android/dialer/logging/DialerImpression$Builder;",
        ">;",
        "Lcom/android/dialer/logging/DialerImpressionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3026
    invoke-static {}, Lcom/android/dialer/logging/DialerImpression;->access$000()Lcom/android/dialer/logging/DialerImpression;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/logging/DialerImpression$1;)V
    .locals 0

    .line 3019
    invoke-direct {p0}, Lcom/android/dialer/logging/DialerImpression$Builder;-><init>()V

    return-void
.end method
