.class public Ltop/xy12/codetransporter/conf/AppConf;
.super Ljava/lang/Object;
.source "AppConf.java"


# static fields
.field public static final KEY_MQTT_TOPIC:Ljava/lang/String; = "mqttTopic"

.field public static final KEY_MQTT_TOPIC_CAll:Ljava/lang/String; = "mqttTopicCall"

.field public static final KEY_MQTT_URL:Ljava/lang/String; = "mqttUrl"

.field public static final KEY_PHONE_NUMBER:Ljava/lang/String; = "phoneNumber"

.field public static final PREF_NAME:Ljava/lang/String; = "MyPreferences"

.field public static mqttTopic:Ljava/lang/String; = ""

.field public static mqttTopicCall:Ljava/lang/String; = ""

.field public static mqttUrl:Ljava/lang/String; = ""

.field public static phoneNumber:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadFromSharedPreferences(Landroid/content/Context;)V
    .locals 2

    const-string v0, "MyPreferences"

    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "phoneNumber"

    const-string v1, ""

    .line 26
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltop/xy12/codetransporter/conf/AppConf;->phoneNumber:Ljava/lang/String;

    const-string v0, "mqttUrl"

    const-string v1, "tcp://124.222.11.237:1883"

    .line 27
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltop/xy12/codetransporter/conf/AppConf;->mqttUrl:Ljava/lang/String;

    const-string v0, "mqttTopic"

    const-string v1, "sms/topic"

    .line 28
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltop/xy12/codetransporter/conf/AppConf;->mqttTopic:Ljava/lang/String;

    const-string v0, "mqttTopicCall"

    const-string v1, "call/topic"

    .line 29
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Ltop/xy12/codetransporter/conf/AppConf;->mqttTopicCall:Ljava/lang/String;

    return-void
.end method
