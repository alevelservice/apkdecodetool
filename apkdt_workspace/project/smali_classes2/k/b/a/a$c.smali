.class final Lk/b/a/a$c;
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
    name = "c"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5d8b8814510769ebL


# instance fields
.field private final zone:Lk/b/a/q;


# direct methods
.method constructor <init>(Lk/b/a/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/b/a/a;-><init>()V

    .line 2
    iput-object p1, p0, Lk/b/a/a$c;->zone:Lk/b/a/q;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lk/b/a/a$c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/b/a/a$c;->zone:Lk/b/a/q;

    check-cast p1, Lk/b/a/a$c;

    iget-object p1, p1, Lk/b/a/a$c;->zone:Lk/b/a/q;

    invoke-virtual {v0, p1}, Lk/b/a/q;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getZone()Lk/b/a/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/a$c;->zone:Lk/b/a/q;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/a$c;->zone:Lk/b/a/q;

    invoke-virtual {v0}, Lk/b/a/q;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public instant()Lk/b/a/e;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/b/a/a$c;->millis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lk/b/a/e;->ofEpochMilli(J)Lk/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public millis()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemClock["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/b/a/a$c;->zone:Lk/b/a/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withZone(Lk/b/a/q;)Lk/b/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/a$c;->zone:Lk/b/a/q;

    invoke-virtual {p1, v0}, Lk/b/a/q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lk/b/a/a$c;

    invoke-direct {v0, p1}, Lk/b/a/a$c;-><init>(Lk/b/a/q;)V

    return-object v0
.end method
