.class public Lcom/google/android/gms/internal/ads/o91;
.super Ljava/io/IOException;
.source "com.google.android.gms:play-services-ads-base@@18.1.0"


# instance fields
.field private zzhla:Lcom/google/android/gms/internal/ads/oa1;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/o91;->zzhla:Lcom/google/android/gms/internal/ads/oa1;

    return-void
.end method

.method static zzazx()Lcom/google/android/gms/internal/ads/o91;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/o91;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/o91;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzazy()Lcom/google/android/gms/internal/ads/o91;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/o91;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/o91;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzazz()Lcom/google/android/gms/internal/ads/o91;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/o91;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/o91;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzbaa()Lcom/google/android/gms/internal/ads/o91;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/o91;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/o91;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzbab()Lcom/google/android/gms/internal/ads/o91;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/o91;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/o91;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzbac()Lcom/google/android/gms/internal/ads/n91;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/n91;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/n91;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzbad()Lcom/google/android/gms/internal/ads/o91;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/o91;

    const-string v1, "Failed to parse the message."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/o91;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzbae()Lcom/google/android/gms/internal/ads/o91;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/o91;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/o91;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final zzo(Lcom/google/android/gms/internal/ads/oa1;)Lcom/google/android/gms/internal/ads/o91;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/o91;->zzhla:Lcom/google/android/gms/internal/ads/oa1;

    return-object p0
.end method
