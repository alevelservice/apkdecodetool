.class final Lk/b/a/a$b;
.super Lk/b/a/a;
.source "Clock.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1bdc04b7477ef050L


# instance fields
.field private final baseClock:Lk/b/a/a;

.field private final offset:Lk/b/a/d;


# direct methods
.method constructor <init>(Lk/b/a/a;Lk/b/a/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/b/a/a;-><init>()V

    .line 2
    iput-object p1, p0, Lk/b/a/a$b;->baseClock:Lk/b/a/a;

    .line 3
    iput-object p2, p0, Lk/b/a/a$b;->offset:Lk/b/a/d;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lk/b/a/a$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lk/b/a/a$b;

    .line 3
    iget-object v0, p0, Lk/b/a/a$b;->baseClock:Lk/b/a/a;

    iget-object v2, p1, Lk/b/a/a$b;->baseClock:Lk/b/a/a;

    invoke-virtual {v0, v2}, Lk/b/a/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk/b/a/a$b;->offset:Lk/b/a/d;

    iget-object p1, p1, Lk/b/a/a$b;->offset:Lk/b/a/d;

    invoke-virtual {v0, p1}, Lk/b/a/d;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getZone()Lk/b/a/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/a$b;->baseClock:Lk/b/a/a;

    invoke-virtual {v0}, Lk/b/a/a;->getZone()Lk/b/a/q;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lk/b/a/a$b;->baseClock:Lk/b/a/a;

    invoke-virtual {v0}, Lk/b/a/a;->hashCode()I

    move-result v0

    iget-object v1, p0, Lk/b/a/a$b;->offset:Lk/b/a/d;

    invoke-virtual {v1}, Lk/b/a/d;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public instant()Lk/b/a/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/b/a/a$b;->baseClock:Lk/b/a/a;

    invoke-virtual {v0}, Lk/b/a/a;->instant()Lk/b/a/e;

    move-result-object v0

    iget-object v1, p0, Lk/b/a/a$b;->offset:Lk/b/a/d;

    invoke-virtual {v0, v1}, Lk/b/a/e;->plus(Lk/b/a/x/h;)Lk/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public millis()J
    .locals 4

    .line 1
    iget-object v0, p0, Lk/b/a/a$b;->baseClock:Lk/b/a/a;

    invoke-virtual {v0}, Lk/b/a/a;->millis()J

    move-result-wide v0

    iget-object v2, p0, Lk/b/a/a$b;->offset:Lk/b/a/d;

    invoke-virtual {v2}, Lk/b/a/d;->toMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OffsetClock["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/b/a/a$b;->baseClock:Lk/b/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/b/a/a$b;->offset:Lk/b/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withZone(Lk/b/a/q;)Lk/b/a/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/b/a/a$b;->baseClock:Lk/b/a/a;

    invoke-virtual {v0}, Lk/b/a/a;->getZone()Lk/b/a/q;

    move-result-object v0

    invoke-virtual {p1, v0}, Lk/b/a/q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lk/b/a/a$b;

    iget-object v1, p0, Lk/b/a/a$b;->baseClock:Lk/b/a/a;

    invoke-virtual {v1, p1}, Lk/b/a/a;->withZone(Lk/b/a/q;)Lk/b/a/a;

    move-result-object p1

    iget-object v1, p0, Lk/b/a/a$b;->offset:Lk/b/a/d;

    invoke-direct {v0, p1, v1}, Lk/b/a/a$b;-><init>(Lk/b/a/a;Lk/b/a/d;)V

    return-object v0
.end method
