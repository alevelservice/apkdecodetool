.class final Lk/b/a/n;
.super Ljava/lang/Object;
.source "Ser.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final DURATION_TYPE:B = 0x1t

.field static final INSTANT_TYPE:B = 0x2t

.field static final LOCAL_DATE_TIME_TYPE:B = 0x4t

.field static final LOCAL_DATE_TYPE:B = 0x3t

.field static final LOCAL_TIME_TYPE:B = 0x5t

.field static final MONTH_DAY_TYPE:B = 0x40t

.field static final OFFSET_DATE_TIME_TYPE:B = 0x45t

.field static final OFFSET_TIME_TYPE:B = 0x42t

.field static final YEAR_MONTH_TYPE:B = 0x44t

.field static final YEAR_TYPE:B = 0x43t

.field static final ZONED_DATE_TIME_TYPE:B = 0x6t

.field static final ZONE_OFFSET_TYPE:B = 0x8t

.field static final ZONE_REGION_TYPE:B = 0x7t

.field private static final serialVersionUID:J = -0x6aa27b45e4ddb74eL


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
    iput-byte p1, p0, Lk/b/a/n;->type:B

    .line 4
    iput-object p2, p0, Lk/b/a/n;->object:Ljava/lang/Object;

    return-void
.end method

.method private static a(BLjava/io/DataInput;)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x40

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 1
    new-instance p0, Ljava/io/StreamCorruptedException;

    const-string p1, "Unknown serialized type"

    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :pswitch_0
    invoke-static {p1}, Lk/b/a/k;->readExternal(Ljava/io/DataInput;)Lk/b/a/k;

    move-result-object p0

    return-object p0

    .line 3
    :pswitch_1
    invoke-static {p1}, Lk/b/a/p;->readExternal(Ljava/io/DataInput;)Lk/b/a/p;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_2
    invoke-static {p1}, Lk/b/a/o;->readExternal(Ljava/io/DataInput;)Lk/b/a/o;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_3
    invoke-static {p1}, Lk/b/a/l;->readExternal(Ljava/io/DataInput;)Lk/b/a/l;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_4
    invoke-static {p1}, Lk/b/a/r;->readExternal(Ljava/io/DataInput;)Lk/b/a/r;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_5
    invoke-static {p1}, Lk/b/a/s;->readExternal(Ljava/io/DataInput;)Lk/b/a/q;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_6
    invoke-static {p1}, Lk/b/a/t;->readExternal(Ljava/io/DataInput;)Lk/b/a/t;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_7
    invoke-static {p1}, Lk/b/a/h;->readExternal(Ljava/io/DataInput;)Lk/b/a/h;

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_8
    invoke-static {p1}, Lk/b/a/g;->readExternal(Ljava/io/DataInput;)Lk/b/a/g;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_9
    invoke-static {p1}, Lk/b/a/f;->readExternal(Ljava/io/DataInput;)Lk/b/a/f;

    move-result-object p0

    return-object p0

    .line 12
    :pswitch_a
    invoke-static {p1}, Lk/b/a/e;->readExternal(Ljava/io/DataInput;)Lk/b/a/e;

    move-result-object p0

    return-object p0

    .line 13
    :pswitch_b
    invoke-static {p1}, Lk/b/a/d;->readExternal(Ljava/io/DataInput;)Lk/b/a/d;

    move-result-object p0

    return-object p0

    .line 14
    :cond_0
    invoke-static {p1}, Lk/b/a/j;->readExternal(Ljava/io/DataInput;)Lk/b/a/j;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static read(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 2
    invoke-static {v0, p0}, Lk/b/a/n;->a(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/n;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static writeInternal(BLjava/lang/Object;Ljava/io/DataOutput;)V
    .locals 1

    .line 1
    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    const/16 v0, 0x40

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 2
    new-instance p0, Ljava/io/InvalidClassException;

    const-string p1, "Unknown serialized type"

    invoke-direct {p0, p1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_0
    check-cast p1, Lk/b/a/k;

    invoke-virtual {p1, p2}, Lk/b/a/k;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 4
    :pswitch_1
    check-cast p1, Lk/b/a/p;

    invoke-virtual {p1, p2}, Lk/b/a/p;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 5
    :pswitch_2
    check-cast p1, Lk/b/a/o;

    invoke-virtual {p1, p2}, Lk/b/a/o;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 6
    :pswitch_3
    check-cast p1, Lk/b/a/l;

    invoke-virtual {p1, p2}, Lk/b/a/l;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 7
    :pswitch_4
    check-cast p1, Lk/b/a/r;

    invoke-virtual {p1, p2}, Lk/b/a/r;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 8
    :pswitch_5
    check-cast p1, Lk/b/a/s;

    invoke-virtual {p1, p2}, Lk/b/a/s;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 9
    :pswitch_6
    check-cast p1, Lk/b/a/t;

    invoke-virtual {p1, p2}, Lk/b/a/t;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 10
    :pswitch_7
    check-cast p1, Lk/b/a/h;

    invoke-virtual {p1, p2}, Lk/b/a/h;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 11
    :pswitch_8
    check-cast p1, Lk/b/a/g;

    invoke-virtual {p1, p2}, Lk/b/a/g;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 12
    :pswitch_9
    check-cast p1, Lk/b/a/f;

    invoke-virtual {p1, p2}, Lk/b/a/f;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 13
    :pswitch_a
    check-cast p1, Lk/b/a/e;

    invoke-virtual {p1, p2}, Lk/b/a/e;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 14
    :pswitch_b
    check-cast p1, Lk/b/a/d;

    invoke-virtual {p1, p2}, Lk/b/a/d;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 15
    :cond_0
    check-cast p1, Lk/b/a/j;

    invoke-virtual {p1, p2}, Lk/b/a/j;->writeExternal(Ljava/io/DataOutput;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lk/b/a/n;->type:B

    .line 2
    iget-byte v0, p0, Lk/b/a/n;->type:B

    invoke-static {v0, p1}, Lk/b/a/n;->a(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/n;->object:Ljava/lang/Object;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2

    .line 1
    iget-byte v0, p0, Lk/b/a/n;->type:B

    iget-object v1, p0, Lk/b/a/n;->object:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lk/b/a/n;->writeInternal(BLjava/lang/Object;Ljava/io/DataOutput;)V

    return-void
.end method
