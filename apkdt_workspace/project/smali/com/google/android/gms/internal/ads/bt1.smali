.class public final enum Lcom/google/android/gms/internal/ads/bt1;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/i91;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/bt1;",
        ">;",
        "Lcom/google/android/gms/internal/ads/i91;"
    }
.end annotation


# static fields
.field private static final synthetic e:[Lcom/google/android/gms/internal/ads/bt1;

.field public static final enum zzbvj:Lcom/google/android/gms/internal/ads/bt1;

.field public static final enum zzbvk:Lcom/google/android/gms/internal/ads/bt1;

.field public static final enum zzbvl:Lcom/google/android/gms/internal/ads/bt1;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/bt1;

    const/4 v1, 0x0

    const-string v2, "ENUM_FALSE"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/bt1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/bt1;->zzbvj:Lcom/google/android/gms/internal/ads/bt1;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/bt1;

    const/4 v2, 0x1

    const-string v3, "ENUM_TRUE"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/ads/bt1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/bt1;->zzbvk:Lcom/google/android/gms/internal/ads/bt1;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/bt1;

    const/4 v3, 0x2

    const-string v4, "ENUM_UNKNOWN"

    const/16 v5, 0x3e8

    invoke-direct {v0, v4, v3, v5}, Lcom/google/android/gms/internal/ads/bt1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/bt1;->zzbvl:Lcom/google/android/gms/internal/ads/bt1;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/bt1;

    .line 4
    sget-object v4, Lcom/google/android/gms/internal/ads/bt1;->zzbvj:Lcom/google/android/gms/internal/ads/bt1;

    aput-object v4, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/bt1;->zzbvk:Lcom/google/android/gms/internal/ads/bt1;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/bt1;->zzbvl:Lcom/google/android/gms/internal/ads/bt1;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/ads/bt1;->e:[Lcom/google/android/gms/internal/ads/bt1;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/dt1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dt1;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/google/android/gms/internal/ads/bt1;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/bt1;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/bt1;->e:[Lcom/google/android/gms/internal/ads/bt1;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/bt1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/bt1;

    return-object v0
.end method

.method public static zzac()Lcom/google/android/gms/internal/ads/k91;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/ct1;->a:Lcom/google/android/gms/internal/ads/k91;

    return-object v0
.end method

.method public static zzbu(I)Lcom/google/android/gms/internal/ads/bt1;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/bt1;->zzbvl:Lcom/google/android/gms/internal/ads/bt1;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/bt1;->zzbvk:Lcom/google/android/gms/internal/ads/bt1;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/bt1;->zzbvj:Lcom/google/android/gms/internal/ads/bt1;

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lcom/google/android/gms/internal/ads/bt1;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/ads/bt1;->value:I

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzab()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/bt1;->value:I

    return v0
.end method
