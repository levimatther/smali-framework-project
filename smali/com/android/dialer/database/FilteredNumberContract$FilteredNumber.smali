.class public Lcom/android/dialer/database/FilteredNumberContract$FilteredNumber;
.super Ljava/lang/Object;
.source "FilteredNumberContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/database/FilteredNumberContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilteredNumber"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/filtered_numbers_table"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FILTERED_NUMBERS_TABLE:Ljava/lang/String; = "filtered_numbers_table"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 131
    sget-object v0, Lcom/android/dialer/database/FilteredNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "filtered_numbers_table"

    .line 132
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/database/FilteredNumberContract$FilteredNumber;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
