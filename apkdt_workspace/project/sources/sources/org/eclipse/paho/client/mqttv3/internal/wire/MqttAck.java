package org.eclipse.paho.client.mqttv3.internal.wire;

/* loaded from: classes.dex */
public abstract class MqttAck extends MqttWireMessage {
    @Override // org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage
    protected byte getMessageInfo() {
        return (byte) 0;
    }

    public MqttAck(byte b) {
        super(b);
    }

    @Override // org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage
    public String toString() {
        return new StringBuffer(String.valueOf(super.toString())).append(" msgId ").append(this.msgId).toString();
    }
}
