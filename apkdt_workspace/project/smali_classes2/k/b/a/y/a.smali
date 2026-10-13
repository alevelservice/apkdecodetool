.class final Lk/b/a/y/a;
.super Ljava/lang/Object;
.source "Ser.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final SZR:B = 0x1t

.field static final ZOT:B = 0x2t

.field static final ZOTRULE:B = 0x3t

.field private static final serialVersionUID:J = -0x7b4f011483e5ac42L


# instance fields
.field private object:Ljava/lang/Object;

.field private type:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-byte p1, p0, Lk/b/a/y/a;->type:B

    .line 4
    iput-object p2, p0, Lk/b/a/y/a;->object:Ljava/lang/Object;

    return-void
.end method

.method private static a(BLjava/io/DataInput;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 6
    invoke-static {p1}, Lk/b/a/y/e;->readExternal(Ljava/io/DataInput;)Lk/b/a/y/e;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/io/StreamCorruptedException;

    const-string p1, "Unknown serialized type"

    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    invoke-static {p1}, Lk/b/a/y/d;->readExternal(Ljava/io/DataInput;)Lk/b/a/y/d;

    move-result-object p0

    return-object p0

    .line 9
    :cond_2
    invoke-static {p1}, Lk/b/a/y/b;->readExternal(Ljava/io/DataInput;)Lk/b/a/y/b;

    move-result-object p0

    return-object p0
.end method

.method private static a(BLjava/lang/Object;Ljava/io/DataOutput;)V
    .locals 1

    .line 1
    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 2
    check-cast p1, Lk/b/a/y/e;

    invoke-virtual {p1, p2}, Lk/b/a/y/e;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/io/InvalidClassException;

    const-string p1, "Unknown serialized type"

    invoke-direct {p0, p1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    check-cast p1, Lk/b/a/y/d;

    invoke-virtual {p1, p2}, Lk/b/a/y/d;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 5
    :cond_2
    check-cast p1, Lk/b/a/y/b;

    invoke-virtual {p1, p2}, Lk/b/a/y/b;->writeExternal(Ljava/io/DataOutput;)V

    :goto_0
    return-void
.end method

.method static read(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 2
    invoke-static {v0, p0}, Lk/b/a/y/a;->a(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static readEpochSec(Ljava/io/DataInput;)J
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    and-int/2addr v2, v1

    .line 4
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result p0

    and-int/2addr p0, v1

    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    int-to-long v0, v0

    const-wide/16 v2, 0x384

    mul-long v0, v0, v2

    const-wide v2, 0x110bc5000L

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static readOffset(Ljava/io/DataInput;)Lk/b/a/r;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result p0

    invoke-static {p0}, Lk/b/a/r;->ofTotalSeconds(I)Lk/b/a/r;

    move-result-object p0

    goto :goto_0

    :cond_0
    mul-int/lit16 v0, v0, 0x384

    invoke-static {v0}, Lk/b/a/r;->ofTotalSeconds(I)Lk/b/a/r;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/y/a;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static write(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0, p0, p1}, Lk/b/a/y/a;->a(BLjava/lang/Object;Ljava/io/DataOutput;)V

    return-void
.end method

.method static writeEpochSec(JLjava/io/DataOutput;)V
    .locals 8

    const/16 v0, 0xff

    const-wide v1, -0x110bc5000L

    cmp-long v3, p0, v1

    if-ltz v3, :cond_0

    const-wide v1, 0x26cb5db00L

    cmp-long v3, p0, v1

    if-gez v3, :cond_0

    const-wide/16 v1, 0x384

    .line 1
    rem-long v3, p0, v1

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const-wide v3, 0x110bc5000L

    add-long/2addr p0, v3

    .line 2
    div-long/2addr p0, v1

    long-to-int p1, p0

    ushr-int/lit8 p0, p1, 0x10

    and-int/2addr p0, v0

    .line 3
    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    ushr-int/lit8 p0, p1, 0x8

    and-int/2addr p0, v0

    .line 4
    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    and-int/lit16 p0, p1, 0xff

    .line 5
    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 7
    invoke-interface {p2, p0, p1}, Ljava/io/DataOutput;->writeLong(J)V

    :goto_0
    return-void
.end method

.method static writeOffset(Lk/b/a/r;Ljava/io/DataOutput;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/b/a/r;->getTotalSeconds()I

    move-result p0

    .line 2
    rem-int/lit16 v0, p0, 0x384

    const/16 v1, 0x7f

    if-nez v0, :cond_0

    div-int/lit16 v0, p0, 0x384

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f

    .line 3
    :goto_0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    if-ne v0, v1, :cond_1

    .line 4
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lk/b/a/y/a;->type:B

    .line 2
    iget-byte v0, p0, Lk/b/a/y/a;->type:B

    invoke-static {v0, p1}, Lk/b/a/y/a;->a(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/y/a;->object:Ljava/lang/Object;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2

    .line 1
    iget-byte v0, p0, Lk/b/a/y/a;->type:B

    iget-object v1, p0, Lk/b/a/y/a;->object:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lk/b/a/y/a;->a(BLjava/lang/Object;Ljava/io/DataOutput;)V

    return-void
.end method
