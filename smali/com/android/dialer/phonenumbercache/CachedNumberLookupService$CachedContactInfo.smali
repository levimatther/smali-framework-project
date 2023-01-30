.class public interface abstract Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;
.super Ljava/lang/Object;
.source "CachedNumberLookupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CachedContactInfo"
.end annotation


# virtual methods
.method public abstract getContactInfo()Lcom/android/dialer/phonenumbercache/ContactInfo;
.end method

.method public abstract setDirectorySource(Ljava/lang/String;J)V
.end method

.method public abstract setExtendedSource(Ljava/lang/String;J)V
.end method

.method public abstract setLookupKey(Ljava/lang/String;)V
.end method

.method public abstract setSource(Lcom/android/dialer/logging/ContactSource$Type;Ljava/lang/String;J)V
.end method
