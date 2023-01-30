.class final Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallerInfoQueryToken"
.end annotation


# instance fields
.field final mCallId:Ljava/lang/String;

.field final mQueryId:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 954
    iput p1, p0, Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;->mQueryId:I

    .line 955
    iput-object p2, p0, Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;->mCallId:Ljava/lang/String;

    return-void
.end method
