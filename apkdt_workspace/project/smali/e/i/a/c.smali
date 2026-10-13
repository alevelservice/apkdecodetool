.class public final Le/i/a/c;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final b:Le/i/a/c;

.field public static final c:Le/i/a/c;

.field public static final d:Le/i/a/c;

.field public static final e:Le/i/a/c;

.field public static final f:Le/i/a/c;

.field public static final g:Le/i/a/c;


# instance fields
.field private final a:Lcom/google/android/gms/ads/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Le/i/a/c;

    const-string v1, "mb"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3, v1}, Le/i/a/c;-><init>(IILjava/lang/String;)V

    sput-object v0, Le/i/a/c;->b:Le/i/a/c;

    .line 2
    new-instance v0, Le/i/a/c;

    const/16 v2, 0x140

    const/16 v3, 0x32

    invoke-direct {v0, v2, v3, v1}, Le/i/a/c;-><init>(IILjava/lang/String;)V

    sput-object v0, Le/i/a/c;->c:Le/i/a/c;

    .line 3
    new-instance v0, Le/i/a/c;

    const-string v1, "as"

    const/16 v2, 0x12c

    const/16 v3, 0xfa

    invoke-direct {v0, v2, v3, v1}, Le/i/a/c;-><init>(IILjava/lang/String;)V

    sput-object v0, Le/i/a/c;->d:Le/i/a/c;

    .line 4
    new-instance v0, Le/i/a/c;

    const/16 v2, 0x1d4

    const/16 v3, 0x3c

    invoke-direct {v0, v2, v3, v1}, Le/i/a/c;-><init>(IILjava/lang/String;)V

    sput-object v0, Le/i/a/c;->e:Le/i/a/c;

    .line 5
    new-instance v0, Le/i/a/c;

    const/16 v2, 0x2d8

    const/16 v3, 0x5a

    invoke-direct {v0, v2, v3, v1}, Le/i/a/c;-><init>(IILjava/lang/String;)V

    sput-object v0, Le/i/a/c;->f:Le/i/a/c;

    .line 6
    new-instance v0, Le/i/a/c;

    const/16 v2, 0xa0

    const/16 v3, 0x258

    invoke-direct {v0, v2, v3, v1}, Le/i/a/c;-><init>(IILjava/lang/String;)V

    sput-object v0, Le/i/a/c;->g:Le/i/a/c;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 3
    new-instance p3, Lcom/google/android/gms/ads/d;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/ads/d;-><init>(II)V

    invoke-direct {p0, p3}, Le/i/a/c;-><init>(Lcom/google/android/gms/ads/d;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/a/c;->a:Lcom/google/android/gms/ads/d;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/a/c;->a:Lcom/google/android/gms/ads/d;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/d;->a()I

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/a/c;->a:Lcom/google/android/gms/ads/d;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/d;->b()I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Le/i/a/c;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    check-cast p1, Le/i/a/c;

    .line 3
    iget-object v0, p0, Le/i/a/c;->a:Lcom/google/android/gms/ads/d;

    iget-object p1, p1, Le/i/a/c;->a:Lcom/google/android/gms/ads/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/d;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/a/c;->a:Lcom/google/android/gms/ads/d;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/d;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/a/c;->a:Lcom/google/android/gms/ads/d;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
