.class public abstract Le/b/b/a/a/d/a/f;
.super Le/b/b/a/a/d/a/b;
.source "EncryptAppender.java"


# direct methods
.method constructor <init>(Le/b/b/a/a/a/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/b/b/a/a/d/a/b;-><init>(Le/b/b/a/a/a/d;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Z)Z
    .locals 6

    if-eqz p2, :cond_3

    .line 1
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p2

    invoke-interface {p2}, Le/b/b/a/a/a/d;->i()Le/b/b/a/a/a/e;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v0, "\\$\\$"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3
    array-length v0, p1

    .line 4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    aget-object v3, p1, v2

    invoke-interface {p2, v3}, Le/b/b/a/a/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "$$"

    if-nez v4, :cond_0

    const-string v4, "1_"

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 8
    :cond_0
    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/b/b/a/a/d/a/b;->a(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 10
    :cond_2
    invoke-virtual {p0, p1}, Le/b/b/a/a/d/a/b;->a(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 11
    :cond_3
    invoke-virtual {p0, p1}, Le/b/b/a/a/d/a/b;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
