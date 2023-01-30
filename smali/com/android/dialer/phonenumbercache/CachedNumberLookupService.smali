.class public interface abstract Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;
.super Ljava/lang/Object;
.source "CachedNumberLookupService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;
    }
.end annotation


# virtual methods
.method public abstract addContact(Landroid/content/Context;Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;)V
.end method

.method public abstract addPhoto(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;)Landroid/net/Uri;
.end method

.method public abstract buildCachedContactInfo(Lcom/android/dialer/phonenumbercache/ContactInfo;)Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;
.end method

.method public abstract canReportAsInvalid(Lcom/android/dialer/logging/ContactSource$Type;Ljava/lang/String;)Z
.end method

.method public abstract clearAllCacheEntries(Landroid/content/Context;)V
.end method

.method public abstract isBusiness(Lcom/android/dialer/logging/ContactSource$Type;)Z
.end method

.method public abstract isCacheUri(Ljava/lang/String;)Z
.end method

.method public abstract lookupCachedContactFromNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;
.end method

.method public abstract reportAsInvalid(Landroid/content/Context;Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;)Z
.end method
