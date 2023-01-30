.class final Lcom/android/incallui/ContactInfoCache$CnapInformationWrapper;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CnapInformationWrapper"
.end annotation


# instance fields
.field final cnapName:Ljava/lang/String;

.field final context:Landroid/content/Context;

.field final number:Ljava/lang/String;

.field final service:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;)V
    .locals 0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache$CnapInformationWrapper;->number:Ljava/lang/String;

    .line 310
    iput-object p2, p0, Lcom/android/incallui/ContactInfoCache$CnapInformationWrapper;->cnapName:Ljava/lang/String;

    .line 311
    iput-object p3, p0, Lcom/android/incallui/ContactInfoCache$CnapInformationWrapper;->context:Landroid/content/Context;

    .line 312
    iput-object p4, p0, Lcom/android/incallui/ContactInfoCache$CnapInformationWrapper;->service:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

    return-void
.end method
