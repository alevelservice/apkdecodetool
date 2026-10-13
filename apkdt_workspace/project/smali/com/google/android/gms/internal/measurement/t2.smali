.class public abstract Lcom/google/android/gms/internal/measurement/t2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Lcom/google/android/gms/internal/measurement/z2;

.field public static final zzadh:Lcom/google/android/gms/internal/measurement/t2;


# instance fields
.field private zzadj:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/d3;

    sget-object v1, Lcom/google/android/gms/internal/measurement/c4;->b:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/d3;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/t2;->zzadh:Lcom/google/android/gms/internal/measurement/t2;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/m2;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/measurement/c3;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/c3;-><init>(Lcom/google/android/gms/internal/measurement/s2;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/x2;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/x2;-><init>(Lcom/google/android/gms/internal/measurement/s2;)V

    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/measurement/t2;->e:Lcom/google/android/gms/internal/measurement/z2;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/measurement/v2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/v2;-><init>()V

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/measurement/t2;->zzadj:I

    return-void
.end method

.method private static a(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method static zzas(I)Lcom/google/android/gms/internal/measurement/b3;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/b3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/b3;-><init>(ILcom/google/android/gms/internal/measurement/s2;)V

    return-object v0
.end method

.method static synthetic zzb(B)I
    .locals 0

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/t2;->a(B)I

    move-result p0

    return p0
.end method

.method static zzb(III)I
    .locals 3

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    .line 3
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const/16 v0, 0x42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Beginning index larger than ending index: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const/16 v0, 0x25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "End index: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const/16 p2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Beginning index: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method

.method public static zzb([BII)Lcom/google/android/gms/internal/measurement/t2;
    .locals 2

    add-int v0, p1, p2

    .line 1
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/t2;->zzb(III)I

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/d3;

    sget-object v1, Lcom/google/android/gms/internal/measurement/t2;->e:Lcom/google/android/gms/internal/measurement/z2;

    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/z2;->a([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/d3;-><init>([B)V

    return-object v0
.end method

.method public static zzdq(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/t2;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/d3;

    sget-object v1, Lcom/google/android/gms/internal/measurement/c4;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/d3;-><init>([B)V

    return-object v0
.end method

.method static zze([B)Lcom/google/android/gms/internal/measurement/t2;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/d3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/d3;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/t2;->zzadj:I

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/t2;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, v0}, Lcom/google/android/gms/internal/measurement/t2;->zza(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/measurement/t2;->zzadj:I

    :cond_1
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/s2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/s2;-><init>(Lcom/google/android/gms/internal/measurement/t2;)V

    return-object v0
.end method

.method public abstract size()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/t2;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "<ByteString@%s size=%d>"

    .line 2
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zza(III)I
.end method

.method public abstract zza(II)Lcom/google/android/gms/internal/measurement/t2;
.end method

.method protected abstract zza(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method abstract zza(Lcom/google/android/gms/internal/measurement/q2;)V
.end method

.method public abstract zzaq(I)B
.end method

.method abstract zzar(I)B
.end method

.method public final zzsa()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/c4;->a:Ljava/nio/charset/Charset;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/t2;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/t2;->zza(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzsb()Z
.end method

.method protected final zzsc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/t2;->zzadj:I

    return v0
.end method
