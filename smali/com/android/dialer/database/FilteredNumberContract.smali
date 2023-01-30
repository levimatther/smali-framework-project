.class public final Lcom/android/dialer/database/FilteredNumberContract;
.super Ljava/lang/Object;
.source "FilteredNumberContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/database/FilteredNumberContract$FilteredNumber;,
        Lcom/android/dialer/database/FilteredNumberContract$FilteredNumberColumns;,
        Lcom/android/dialer/database/FilteredNumberContract$FilteredNumberSources;,
        Lcom/android/dialer/database/FilteredNumberContract$FilteredNumberTypes;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String;

.field public static final AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    invoke-static {}, Lcom/android/dialer/constants/Constants;->get()Lcom/android/dialer/constants/Constants;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/constants/Constants;->getFilteredNumberProviderAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/database/FilteredNumberContract;->AUTHORITY:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/dialer/database/FilteredNumberContract;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/database/FilteredNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
