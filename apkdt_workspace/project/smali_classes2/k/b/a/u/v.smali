.class final Lk/b/a/u/v;
.super Ljava/lang/Object;
.source "Ser.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final CHRONO_LOCALDATETIME_TYPE:B = 0xct

.field static final CHRONO_TYPE:B = 0xbt

.field static final CHRONO_ZONEDDATETIME_TYPE:B = 0xdt

.field static final HIJRAH_DATE_TYPE:B = 0x3t

.field static final HIJRAH_ERA_TYPE:B = 0x4t

.field static final JAPANESE_DATE_TYPE:B = 0x1t

.field static final JAPANESE_ERA_TYPE:B = 0x2t

.field static final MINGUO_DATE_TYPE:B = 0x5t

.field static final MINGUO_ERA_TYPE:B = 0x6t

.field static final THAIBUDDHIST_DATE_TYPE:B = 0x7t

.field static final THAIBUDDHIST_ERA_TYPE:B = 0x8t

.field private static final serialVersionUID:J = 0x6d0b833274ca0096L


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
    iput-byte p1, p0, Lk/b/a/u/v;->type:B

    .line 4
    iput-object p2, p0, Lk/b/a/u/v;->object:Ljava/lang/Object;

    return-void
.end method

.method private static a(BLjava/io/ObjectInput;)Ljava/lang/Object;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 14
    :pswitch_0
    new-instance p0, Ljava/io/StreamCorruptedException;

    const-string p1, "Unknown serialized type"

    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :pswitch_1
    invoke-static {p1}, Lk/b/a/u/h;->readExternal(Ljava/io/ObjectInput;)Lk/b/a/u/g;

    move-result-object p0

    return-object p0

    .line 16
    :pswitch_2
    invoke-static {p1}, Lk/b/a/u/d;->readExternal(Ljava/io/ObjectInput;)Lk/b/a/u/c;

    move-result-object p0

    return-object p0

    .line 17
    :pswitch_3
    invoke-static {p1}, Lk/b/a/u/i;->readExternal(Ljava/io/DataInput;)Lk/b/a/u/i;

    move-result-object p0

    return-object p0

    .line 18
    :pswitch_4
    invoke-static {p1}, Lk/b/a/u/y;->readExternal(Ljava/io/DataInput;)Lk/b/a/u/y;

    move-result-object p0

    return-object p0

    .line 19
    :pswitch_5
    invoke-static {p1}, Lk/b/a/u/x;->readExternal(Ljava/io/DataInput;)Lk/b/a/u/b;

    move-result-object p0

    return-object p0

    .line 20
    :pswitch_6
    invoke-static {p1}, Lk/b/a/u/u;->readExternal(Ljava/io/DataInput;)Lk/b/a/u/u;

    move-result-object p0

    return-object p0

    .line 21
    :pswitch_7
    invoke-static {p1}, Lk/b/a/u/t;->readExternal(Ljava/io/DataInput;)Lk/b/a/u/b;

    move-result-object p0

    return-object p0

    .line 22
    :pswitch_8
    invoke-static {p1}, Lk/b/a/u/m;->readExternal(Ljava/io/DataInput;)Lk/b/a/u/m;

    move-result-object p0

    return-object p0

    .line 23
    :pswitch_9
    invoke-static {p1}, Lk/b/a/u/l;->readExternal(Ljava/io/DataInput;)Lk/b/a/u/b;

    move-result-object p0

    return-object p0

    .line 24
    :pswitch_a
    invoke-static {p1}, Lk/b/a/u/r;->readExternal(Ljava/io/DataInput;)Lk/b/a/u/r;

    move-result-object p0

    return-object p0

    .line 25
    :pswitch_b
    invoke-static {p1}, Lk/b/a/u/q;->readExternal(Ljava/io/DataInput;)Lk/b/a/u/b;

    move-result-object p0

    return-object p0

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
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static a(BLjava/lang/Object;Ljava/io/ObjectOutput;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0}, Ljava/io/ObjectOutput;->writeByte(I)V

    packed-switch p0, :pswitch_data_0

    .line 2
    :pswitch_0
    new-instance p0, Ljava/io/InvalidClassException;

    const-string p1, "Unknown serialized type"

    invoke-direct {p0, p1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_1
    check-cast p1, Lk/b/a/u/h;

    invoke-virtual {p1, p2}, Lk/b/a/u/h;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_0

    .line 4
    :pswitch_2
    check-cast p1, Lk/b/a/u/d;

    invoke-virtual {p1, p2}, Lk/b/a/u/d;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_0

    .line 5
    :pswitch_3
    check-cast p1, Lk/b/a/u/i;

    invoke-virtual {p1, p2}, Lk/b/a/u/i;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 6
    :pswitch_4
    check-cast p1, Lk/b/a/u/y;

    invoke-virtual {p1, p2}, Lk/b/a/u/y;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 7
    :pswitch_5
    check-cast p1, Lk/b/a/u/x;

    invoke-virtual {p1, p2}, Lk/b/a/u/x;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 8
    :pswitch_6
    check-cast p1, Lk/b/a/u/u;

    invoke-virtual {p1, p2}, Lk/b/a/u/u;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 9
    :pswitch_7
    check-cast p1, Lk/b/a/u/t;

    invoke-virtual {p1, p2}, Lk/b/a/u/t;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 10
    :pswitch_8
    check-cast p1, Lk/b/a/u/m;

    invoke-virtual {p1, p2}, Lk/b/a/u/m;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 11
    :pswitch_9
    check-cast p1, Lk/b/a/u/l;

    invoke-virtual {p1, p2}, Lk/b/a/u/l;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 12
    :pswitch_a
    check-cast p1, Lk/b/a/u/r;

    invoke-virtual {p1, p2}, Lk/b/a/u/r;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 13
    :pswitch_b
    check-cast p1, Lk/b/a/u/q;

    invoke-virtual {p1, p2}, Lk/b/a/u/q;->writeExternal(Ljava/io/DataOutput;)V

    :goto_0
    return-void

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
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static read(Ljava/io/ObjectInput;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    .line 2
    invoke-static {v0, p0}, Lk/b/a/u/v;->a(BLjava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/u/v;->object:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lk/b/a/u/v;->type:B

    .line 2
    iget-byte v0, p0, Lk/b/a/u/v;->type:B

    invoke-static {v0, p1}, Lk/b/a/u/v;->a(BLjava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/u/v;->object:Ljava/lang/Object;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2

    .line 1
    iget-byte v0, p0, Lk/b/a/u/v;->type:B

    iget-object v1, p0, Lk/b/a/u/v;->object:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lk/b/a/u/v;->a(BLjava/lang/Object;Ljava/io/ObjectOutput;)V

    return-void
.end method
