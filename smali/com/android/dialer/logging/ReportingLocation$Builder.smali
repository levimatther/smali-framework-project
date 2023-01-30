.class public final Lcom/android/dialer/logging/ReportingLocation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ReportingLocation.java"

# interfaces
.implements Lcom/android/dialer/logging/ReportingLocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/logging/ReportingLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/dialer/logging/ReportingLocation;",
        "Lcom/android/dialer/logging/ReportingLocation$Builder;",
        ">;",
        "Lcom/android/dialer/logging/ReportingLocationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 205
    invoke-static {}, Lcom/android/dialer/logging/ReportingLocation;->access$000()Lcom/android/dialer/logging/ReportingLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/logging/ReportingLocation$1;)V
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/android/dialer/logging/ReportingLocation$Builder;-><init>()V

    return-void
.end method
